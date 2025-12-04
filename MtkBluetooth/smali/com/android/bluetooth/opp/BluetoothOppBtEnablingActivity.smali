.class public Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;
.super Landroid/bluetooth/AlertActivity;
.source "BluetoothOppBtEnablingActivity.java"


# static fields
.field private static final BT_ENABLING_TIMEOUT:I = 0x0

.field private static final BT_ENABLING_TIMEOUT_VALUE:I = 0x4e20

.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothOppEnablingActivity"

.field private static final V:Z


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/bluetooth/AlertActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    .line 119
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelSendingProgress()V
    .locals 2

    .line 156
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 157
    iget-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 161
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    const v2, 0x7f0e0047

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 75
    return-void

    .line 78
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    .line 82
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e0048

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->setupAlert()V

    .line 87
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/bluetooth/AlertActivity;->onDestroy()V

    .line 114
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 101
    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 103
    const-string p1, "BluetoothOppEnablingActivity"

    const-string p2, "onKeyDown() called; Key: back key"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->cancelSendingProgress()V

    .line 108
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
