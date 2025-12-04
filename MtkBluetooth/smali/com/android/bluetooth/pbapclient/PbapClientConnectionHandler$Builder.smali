.class public Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;
.super Ljava/lang/Object;
.source "PbapClientConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Landroid/os/Looper;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Landroid/content/Context;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;
    .locals 1

    .line 198
    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;)V

    .line 199
    return-object v0
.end method

.method public setClientSM(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mClientStateMachine:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 184
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mContext:Landroid/content/Context;

    .line 194
    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mLooper:Landroid/os/Looper;

    .line 179
    return-object p0
.end method

.method public setRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 189
    return-object p0
.end method
