.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;
.super Landroid/content/ContentProvider;
.source "AvrcpCoverArtProvider.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.android.bluetooth.avrcpcontroller.AvrcpCoverArtProvider"

.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "AvrcpCoverArtProvider"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "AvrcpCoverArtProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->DBG:Z

    .line 57
    const-string v0, "content://com.android.bluetooth.avrcpcontroller.AvrcpCoverArtProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 54
    return-void
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 1

    .line 141
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "AvrcpCoverArtProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method private getImageDescriptor(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageDescriptor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->debug(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->mStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;->getImageFile(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const/high16 p2, 0x10000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 82
    return-object p1

    .line 79
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public static getImageUri(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 67
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 69
    const-string v0, "handle"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImageUri -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->debug(Ljava/lang/String;)V

    .line 72
    return-object p0

    .line 67
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 127
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 137
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 122
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 110
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->mStorage:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtStorage;

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\')"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->debug(Ljava/lang/String;)V

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 92
    :try_start_0
    const-string p2, "device"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    nop

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    nop

    .line 104
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtProvider;->getImageDescriptor(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 100
    :catch_0
    move-exception p1

    .line 101
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1

    .line 94
    :catch_1
    move-exception p1

    .line 95
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 117
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 132
    const/4 p1, 0x0

    return p1
.end method
