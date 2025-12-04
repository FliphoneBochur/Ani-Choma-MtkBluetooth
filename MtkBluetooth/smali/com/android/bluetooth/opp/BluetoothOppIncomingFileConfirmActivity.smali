.class public Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.super Landroid/app/Activity;
.source "BluetoothOppIncomingFileConfirmActivity.java"


# static fields
.field private static final D:Z = true

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7d0

.field private static final PREFERENCE_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "BluetoothIncomingFileConfirmActivity"

.field private static final V:Z


# instance fields
.field private mFileName:Landroid/widget/TextView;

.field private mFilesize:Landroid/widget/TextView;

.field private mPhoneName:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTctDialog:Landroid/app/TctDialog;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUpdateValues:Landroid/content/ContentValues;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 90
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$8;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$8;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/app/TctDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTctDialog:Landroid/app/TctDialog;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    return v0
.end method

.method private onTimeout()V
    .locals 4

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 240
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTctDialog:Landroid/app/TctDialog;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f0e0051

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/TctDialog;->setDialogTitle(Ljava/lang/CharSequence;)Landroid/app/TctDialog;

    .line 242
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTctDialog:Landroid/app/TctDialog;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$7;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$7;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$6;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$6;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    .line 246
    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$5;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    .line 250
    const v2, 0x7f0e0052

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    .line 260
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 262
    return-void
.end method

.method private showView()V
    .locals 4

    .line 135
    const-string v0, "BluetoothIncomingFileConfirmActivity"

    const-string v1, "showView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const v0, 0x7f09000c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    const v1, 0x7f07005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mPhoneName:Landroid/widget/TextView;

    .line 138
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mFileName:Landroid/widget/TextView;

    .line 140
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mFilesize:Landroid/widget/TextView;

    .line 142
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-wide v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    new-instance v1, Landroid/app/TctDialog;

    invoke-direct {v1, p0}, Landroid/app/TctDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTctDialog:Landroid/app/TctDialog;

    .line 144
    invoke-virtual {v1, v0}, Landroid/app/TctDialog;->setView(Landroid/view/View;)Landroid/app/TctDialog;

    move-result-object v0

    .line 145
    const v1, 0x7f0e004f

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setDialogTitle(I)Landroid/app/TctDialog;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$3;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$3;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    .line 146
    const v2, 0x7f0e004e

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$2;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    .line 151
    const v2, 0x7f0e0050

    invoke-virtual {v0, v2, v1}, Landroid/app/TctDialog;->setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/app/TctDialog;->show()V

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTctDialog:Landroid/app/TctDialog;

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$4;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$4;-><init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/TctDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 165
    return-void
.end method


# virtual methods
.method public Accept()V
    .locals 4

    .line 169
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 170
    nop

    .line 171
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 170
    const-string v2, "confirm"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Confirmed :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothIncomingFileConfirmActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTctDialog:Landroid/app/TctDialog;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/app/TctDialog;->dismiss()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 182
    return-void
.end method

.method public Decline()V
    .locals 4

    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    .line 186
    nop

    .line 187
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 186
    const-string v2, "confirm"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUpdateValues:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Denied :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothIncomingFileConfirmActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTctDialog:Landroid/app/TctDialog;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/app/TctDialog;->dismiss()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    const-string v1, "BluetoothIncomingFileConfirmActivity"

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    .line 110
    new-instance p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 111
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 112
    if-nez p1, :cond_2

    .line 113
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    if-eqz p1, :cond_1

    .line 114
    const-string p1, "Error: Can not get data from db"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 117
    return-void

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->showView()V

    .line 120
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTimeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz p1, :cond_4

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 125
    :cond_4
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    if-eqz p1, :cond_5

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothIncomingFileConfirmActivity: Got uri:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 200
    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 202
    const-string p1, "BluetoothIncomingFileConfirmActivity"

    const-string p2, "onKeyDown() called; Key: back key"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 205
    const/4 p1, 0x1

    return p1

    .line 207
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    .line 220
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    if-eqz p1, :cond_0

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothIncomingFileConfirmActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz p1, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->onTimeout()V

    .line 226
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->V:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState() mTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothIncomingFileConfirmActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->mTimeout:Z

    const-string v1, "user_timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    return-void
.end method
