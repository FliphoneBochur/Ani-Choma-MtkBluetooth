.class public abstract Lcom/android/bluetooth/btservice/ProfileService;
.super Landroid/app/Service;
.source "ProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final DBG:Z

.field private static final PROFILE_SERVICE_MODE:I = 0x2


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

.field private final mName:Ljava/lang/String;

.field private mProfileStarted:Z

.field private mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    nop

    .line 42
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    .line 41
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/ProfileService;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private doStart()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Can\'t start profile service: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 229
    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Could not add this profile because AdapterService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 233
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService;->addProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    new-instance v1, Lcom/android/bluetooth/btservice/ProfileService$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/btservice/ProfileService$1;-><init>(Lcom/android/bluetooth/btservice/ProfileService;)V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->setCurrentUser(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 262
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/ProfileService;->setUserUnlocked(I)V

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->start()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    .line 266
    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Error starting profile. start() returned false."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileServiceStateChanged(Lcom/android/bluetooth/btservice/ProfileService;I)V

    .line 271
    return-void
.end method

.method private doStop()V
    .locals 2

    .line 274
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "doStop() called, but the profile is not running."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_1

    .line 279
    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->onProfileServiceStateChanged(Lcom/android/bluetooth/btservice/ProfileService;I)V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stop()Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "Unable to stop profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService;->removeProfile(Lcom/android/bluetooth/btservice/ProfileService;)V

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 288
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 291
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->stopSelf()V

    .line 292
    return-void
.end method

.method public static println(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 206
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    .line 103
    return-void
.end method

.method protected create()V
    .locals 0

    .line 84
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 185
    const-string v0, "\nProfile: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    return-void
.end method

.method public dumpProto(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;)V
    .locals 0

    .line 197
    return-void
.end method

.method protected getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    .line 298
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
.end method

.method protected isAvailable()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mProfileStarted:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 161
    sget-boolean p1, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 121
    sget-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 125
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    .line 127
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->create()V

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/ProfileService;->cleanup()V

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()V

    .line 216
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    .line 218
    :cond_0
    iput-object v1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 219
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 220
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 132
    sget-boolean p2, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz p2, :cond_0

    .line 133
    iget-object p2, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string p3, "onStartCommand()"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    const-string p2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/ProfileService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    .line 138
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string p2, "Permission denied!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return p3

    .line 142
    :cond_1
    if-nez p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string p2, "onStartCommand ignoring null intent."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return p3

    .line 147
    :cond_2
    const-string p2, "action"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 148
    const-string v0, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 149
    const/high16 p2, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 150
    const/16 p2, 0xa

    if-ne p1, p2, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;->doStop()V

    goto :goto_0

    .line 152
    :cond_3
    const/16 p2, 0xc

    if-ne p1, p2, :cond_4

    .line 153
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;->doStart()V

    .line 156
    :cond_4
    :goto_0
    return p3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 173
    sget-boolean v0, Lcom/android/bluetooth/btservice/ProfileService;->DBG:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ProfileService;->mName:Ljava/lang/String;

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected setCurrentUser(I)V
    .locals 0

    .line 108
    return-void
.end method

.method protected setUserUnlocked(I)V
    .locals 0

    .line 113
    return-void
.end method

.method protected abstract start()Z
.end method

.method protected abstract stop()Z
.end method
