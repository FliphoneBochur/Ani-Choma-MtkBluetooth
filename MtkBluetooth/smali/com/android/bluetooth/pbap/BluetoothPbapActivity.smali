.class public Lcom/android/bluetooth/pbap/BluetoothPbapActivity;
.super Landroid/bluetooth/AlertActivity;
.source "BluetoothPbapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_OBEX_AUTHKEY_MAX_LENGTH:I = 0x10

.field private static final DIALOG_YES_NO_AUTH:I = 0x1

.field private static final DISMISS_TIMEOUT_DIALOG:I = 0x0

.field private static final DISMISS_TIMEOUT_DIALOG_VALUE:I = 0x7d0

.field private static final KEY_USER_TIMEOUT:Ljava/lang/String; = "user_timeout"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapActivity"

.field private static final V:Z


# instance fields
.field private mCurrentDialog:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mKeyView:Landroid/widget/EditText;

.field private mMessageView:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionKey:Ljava/lang/String;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/bluetooth/AlertActivity;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 92
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onTimeout()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->V:Z

    return v0
.end method

.method private createDisplayText(I)Ljava/lang/String;
    .locals 3

    .line 136
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 141
    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_0
    const p1, 0x7f0e0071

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 139
    return-object p1
.end method

.method private createView(I)Landroid/view/View;
    .locals 4

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 158
    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    .line 149
    const v2, 0x7f07006f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mMessageView:Landroid/widget/TextView;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    const v0, 0x7f07008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    .line 152
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 156
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    return-object p1
.end method

.method private onNegative()V
    .locals 2

    .line 175
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    const-string v0, "com.android.bluetooth.pbap.authcancelled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 180
    return-void
.end method

.method private onPositive()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 164
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    const-string v1, "com.android.bluetooth.pbap.authresponse"

    const-string v2, "com.android.bluetooth.pbap.sessionkey"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 172
    return-void
.end method

.method private onTimeout()V
    .locals 6

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 213
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mMessageView:Landroid/widget/TextView;

    const v3, 0x7f0e006e

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 217
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->changeButtonEnabled(IZ)V

    .line 219
    const/4 v0, -0x2

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->changeButtonVisibility(II)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 224
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    const-string p1, "com.android.bluetooth"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "com.android.bluetooth.pbap.device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method private showPbapDialog(I)V
    .locals 2

    .line 121
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlertBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->setupAlert()V

    .line 128
    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->changeButtonEnabled(IZ)V

    .line 129
    nop

    .line 133
    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 265
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 266
    const/4 p1, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->changeButtonEnabled(IZ)V

    .line 268
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 257
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    const/4 p1, -0x2

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 198
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onPositive()V

    .line 201
    goto :goto_0

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onNegative()V

    .line 205
    nop

    .line 209
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "com.android.bluetooth.pbap.device"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 108
    if-eqz v0, :cond_0

    const-string p1, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->showPbapDialog(I)V

    .line 110
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    goto :goto_0

    .line 112
    :cond_0
    const-string p1, "BluetoothPbapActivity"

    const-string v0, "Error: this activity may be started only with intent PBAP_ACCESS_REQUEST or PBAP_AUTH_CHALL "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 246
    invoke-super {p0}, Landroid/bluetooth/AlertActivity;->onDestroy()V

    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 252
    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 228
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 229
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 230
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->V:Z

    if-eqz p1, :cond_0

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRestoreInstanceState() mTimeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothPbapActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    if-eqz p1, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onTimeout()V

    .line 236
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Landroid/bluetooth/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    const-string v1, "user_timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 261
    return-void
.end method
