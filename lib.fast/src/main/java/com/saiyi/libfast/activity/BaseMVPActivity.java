package com.saiyi.libfast.activity;

import android.content.Context;
import android.os.Bundle;

import com.saiyi.libfast.mvp.IView;
import com.saiyi.libfast.mvp.PresenterImpl;

/**
 * Created by siwei on 2018/3/13.
 */

public abstract class BaseMVPActivity<P extends PresenterImpl> extends BaseActivity implements IView {

    private P mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mPresenter = initPresenter(this);
        if(mPresenter != null){
            mPresenter.attachView(this);
        }
    }

    /**初始化Presenter*/
    public abstract P initPresenter(Context context);

    protected P getPresenter(){
        return mPresenter;
    }

    @Override
    protected void initView() {
    }

    @Override
    protected void initListener() {
    }

    @Override
    protected void initData() {
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if(mPresenter != null){
            mPresenter.detachView();
            mPresenter = null;
        }
    }
}
