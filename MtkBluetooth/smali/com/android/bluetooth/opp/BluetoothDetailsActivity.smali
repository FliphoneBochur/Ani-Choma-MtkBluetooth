.class public Lcom/android/bluetooth/opp/BluetoothDetailsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BluetoothDetailsActivity.java"

# interfaces
.implements Landroid/widget/MenuBar$MenuBarListener;


# static fields
.field private static final DEFAULT_SIZE:J = 0x0L

.field public static final DETAIL_COMPLETE_DATE:Ljava/lang/String; = "detail_complete_date"

.field public static final DETAIL_CONTENT:Ljava/lang/String; = "detail_content"

.field public static final DETAIL_DEVICE_NAME:Ljava/lang/String; = "detail_device_name"

.field public static final DETAIL_INFO:Ljava/lang/String; = "detail_info"

.field public static final DETAIL_SIZE:Ljava/lang/String; = "detail_size"

.field public static final DETAIL_TITLE:Ljava/lang/String; = "detail_title"

.field private static final TAG:Ljava/lang/String; = "BluetoothDetailsActivity"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mContentTv:Landroid/widget/TextView;

.field private mDate:Ljava/lang/String;

.field private mDateTv:Landroid/widget/TextView;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceNameTv:Landroid/widget/TextView;

.field private mMenuBar:Landroid/widget/MenuBar;

.field private mSize:Ljava/lang/String;

.field private mSizeTv:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 103
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x7f04000b

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method private initData(Landroid/content/Intent;)V
    .locals 2

    .line 87
    const-string v0, "detail_info"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->finish()V

    .line 90
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 91
    const-string v0, "detail_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mTitle:Ljava/lang/String;

    .line 92
    const-string v0, "detail_content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mContent:Ljava/lang/String;

    .line 93
    const-string v0, "detail_device_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDeviceName:Ljava/lang/String;

    .line 94
    const-string v0, "detail_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mSize:Ljava/lang/String;

    .line 95
    const-string v0, "detail_complete_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDate:Ljava/lang/String;

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2222mTitle:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mContent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mDeviceName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mSize:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mDate:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDetailsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method private initView()V
    .locals 2

    .line 72
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mTitleTv:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mContentTv:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mSizeTv:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDeviceNameTv:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDateTv:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mContentTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDeviceNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mSizeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDateTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method


# virtual methods
.method public onClickCSK()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->finish()V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onClickLSK()Z
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public onClickRSK()Z
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 56
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 57
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 59
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 60
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 61
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 62
    const p1, 0x7f090001

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->getMenuBar()Landroid/widget/MenuBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    .line 64
    invoke-virtual {p1, p0}, Landroid/widget/MenuBar;->setMenuBarListener(Landroid/widget/MenuBar$MenuBarListener;)V

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->initActionBar()V

    .line 66
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->initData(Landroid/content/Intent;)V

    .line 67
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->initView()V

    .line 69
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    invoke-virtual {v0, p1, p2}, Landroid/widget/MenuBar;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionMenuClick(I)V
    .locals 0

    .line 145
    return-void
.end method

.method public onOptionMenuDismiss()V
    .locals 0

    .line 150
    return-void
.end method

.method public onOptionMenuShow()V
    .locals 0

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothDetailsActivity;->mMenuBar:Landroid/widget/MenuBar;

    const/4 v1, 0x0

    const v2, 0x7f0e0027

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 114
    return-void
.end method
