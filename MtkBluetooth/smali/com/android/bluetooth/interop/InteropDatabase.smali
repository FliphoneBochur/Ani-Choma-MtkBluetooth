.class public Lcom/android/bluetooth/interop/InteropDatabase;
.super Ljava/lang/Object;
.source "InteropDatabase.java"


# static fields
.field static final BD_NAME_LEN:I = 0x80

.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "InteropDatabase"

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    nop

    .line 54
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/interop/InteropDatabase;->VDBG:Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getByteAddressFromString(Ljava/lang/String;)[B
    .locals 0

    .line 84
    if-nez p1, :cond_0

    .line 85
    const-string p1, "00:00:00:00:00:00"

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public native cleanupNative()V
.end method

.method public native initializeNative()V
.end method

.method public interopDatabaseMatch(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 60
    sget-boolean v0, Lcom/android/bluetooth/interop/InteropDatabase;->VDBG:Z

    const-string v1, "InteropDatabase"

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interopDatabaseMatch() feature="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", val="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    invoke-static {p3}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not a valid Bluetooth address"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/android/bluetooth/interop/InteropDatabase;->getByteAddressFromString(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/interop/InteropDatabase;->interopDatabaseMatch([BI[B)Z

    move-result p1

    return p1

    .line 69
    :cond_3
    if-ne p2, v0, :cond_4

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/interop/InteropDatabase;->interopDatabaseMatch([BI[B)Z

    move-result p1

    return p1

    .line 71
    :cond_4
    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    goto :goto_1

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not suppported type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 p1, 0x0

    return p1

    .line 72
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/android/bluetooth/interop/InteropDatabase;->getByteAddressFromString(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/interop/InteropDatabase;->interopDatabaseMatch([BI[B)Z

    move-result p1

    return p1
.end method

.method public interopDatabaseMatch([BI[B)Z
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/bluetooth/interop/InteropDatabase;->interopDatabaseMatchNative([BI[B)Z

    move-result p1

    return p1
.end method

.method public native interopDatabaseMatchNative([BI[B)Z
.end method
