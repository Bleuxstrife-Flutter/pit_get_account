package com.padimas.pit_get_account;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import android.util.Log;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * PitGetAccountPlugin
 */
public class PitGetAccountPlugin implements MethodCallHandler {
    public PitGetAccountPlugin(Registrar registrar) {
        this.context = registrar.context();
    }

    Context context;

    /**
     * Plugin registration.
     */
    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "pit_get_account");
        channel.setMethodCallHandler(new PitGetAccountPlugin(registrar));
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if (call.method.equals("getAccount")) {
            List<String> res = getAccount();
            result.success(res);
        } else {
            result.notImplemented();
        }
    }

    public List<String> getAccount() {
        AccountManager accManager = AccountManager.get(context);
        Account acc[] = accManager.getAccounts();

        List<String> list = new ArrayList<String>();
        for (int i = 0; i < acc.length; i++) {
            if (acc[i].type.equals("com.google")) list.add(acc[i].name);
        }
        return list;
    }
}
