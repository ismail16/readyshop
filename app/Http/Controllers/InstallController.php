<?php

namespace App\Http\Controllers;

use App\CPU\Helpers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;

class InstallController extends Controller
{
    public function step0()
    {
        return view('installation.step0');
    }

    public function step1()
    {
        $permission['curl_enabled'] = function_exists('curl_version');
        $permission['db_file_write_perm'] = is_writable(base_path('.env'));
        $permission['routes_file_write_perm'] = is_writable(base_path('app/Providers/RouteServiceProvider.php'));
        return view('installation.step1', compact('permission'));
    }

    public function step2()
    {
        return view('installation.step2');
    }

    public function step3()
    {
        return view('installation.step3');
    }

    public function step4()
    {
        return view('installation.step4');
    }

    public function step5()
    {
        return view('installation.step5');
    }

    public function purchase_code(Request $request)
    {
        $this->setEnvironmentValue('SOFTWARE_ID','MzE0NDg1OTc=');
        $this->setEnvironmentValue('BUYER_USERNAME',$request['username']);
        $this->setEnvironmentValue('PURCHASE_CODE',$request['purchase_key']);

        // old set session
        // return redirect()->route('dmvf', ['purchase_key' => $request['purchase_key'], 'username' => $request['username']]);

        // new set session
        session()->put('purchase_key', $request['purchase_key']);//pk
        session()->put('username', $request['username']);//un
        return redirect()->route('step3');
    }

    public static function setEnvironmentValue($envKey, $envValue)
    {
        $envFile = app()->environmentFilePath();
        $str = file_get_contents($envFile);
        $oldValue = env($envKey);
        if (strpos($str, $envKey) !== false) {
            $str = str_replace("{$envKey}={$oldValue}", "{$envKey}={$envValue}", $str);
        } else {
            $str .= "{$envKey}={$envValue}\n";
        }
        $fp = fopen($envFile, 'w');
        fwrite($fp, $str);
        fclose($fp);
        return $envValue;
    }

    public function system_settings(Request $request)
    {
        DB::table('users')->insertOrIgnore([
            'role_id' => 1,
            'name' => $request['name'],
            'username' => $request['email'],
            'email' => $request['email'],
            'phone' => $request['phone'],
            'designation' => 'Supper Admin',
            'status' => 1,
            'password' => bcrypt($request['password']),
            'created_at' => now(),
            'updated_at' => now()
        ]);

        // DB::table('business_settings')->where(['type' => 'company_name'])->update([
        //     'value' => $request['web_name']
        // ]);

        $previousRouteServiceProvier = base_path('app/Providers/RouteServiceProvider.php');
        $newRouteServiceProvier = base_path('app/Providers/RouteServiceProvider.txt');
        copy($newRouteServiceProvier, $previousRouteServiceProvier);

        $previousAppServiceProvier = base_path('app/Providers/AppServiceProvider.php');
        $newAppServiceProvier = base_path('app/Providers/AppServiceProvider.txt');
        copy($newAppServiceProvier, $previousAppServiceProvier);

        //sleep(5);
        return view('installation.step6');
    }

    public function database_installation(Request $request)
    {
        if (self::check_database_connection($request->DB_HOST, $request->DB_DATABASE, $request->DB_USERNAME, $request->DB_PASSWORD)) {

            $key = base64_encode(random_bytes(32));
            $output = 
                'APP_NAME=laravel
                APP_ENV=local
                APP_KEY=base64:' . $key . '
                APP_DEBUG=false
                APP_INSTALL=true
                APP_LOG_LEVEL=debug
                APP_URL=' . URL::to('/') . '

                DB_CONNECTION=mysql
                DB_HOST=' . $request->DB_HOST . '
                DB_PORT=3306
                DB_DATABASE=' . $request->DB_DATABASE . '
                DB_USERNAME=' . $request->DB_USERNAME . '
                DB_PASSWORD=' . $request->DB_PASSWORD . '

                BROADCAST_DRIVER=log
                CACHE_DRIVER=file
                SESSION_DRIVER=file
                SESSION_LIFETIME=120
                QUEUE_DRIVER=sync

                REDIS_HOST=127.0.0.1
                REDIS_PASSWORD=null
                REDIS_PORT=6379

                PUSHER_APP_ID=
                PUSHER_APP_KEY=
                PUSHER_APP_SECRET=
                PUSHER_APP_CLUSTER=mt1

                PURCHASE_CODE=' . session('purchase_key') . '
                BUYER_USERNAME=' . session('username') . '
                SOFTWARE_ID=MzE0NDg1OTc=';

            $file = fopen(base_path('.env'), 'w');
            fwrite($file, $output);
            fclose($file);

            $path = base_path('.env');
            if (file_exists($path)) {
                return redirect('step4');
            } else {
                session()->flash('error','Database error!');
                return redirect('step3');
            }
        } else {
            session()->flash('error','Database error!');
            return redirect('step3');
        }
    }

    public function import_sql()
    {
        $sql_path = base_path('installation/database.sql');        
        DB::unprepared(file_get_contents($sql_path));
        return redirect('step5');
    }

    function check_database_connection($db_host = "", $db_name = "", $db_user = "", $db_pass = "")
    {

        if (@mysqli_connect($db_host, $db_user, $db_pass, $db_name)) {
            return true;
        } else {
            return false;
        }
    }
}
