.class public Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;
.super Ljava/lang/Object;
.source "BluetoothKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0xfa0

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final CONFIG_BACKUP_CHECKSUM_PATH:Ljava/lang/String; = "/data/misc/bluedroid/bt_config.bak.encrypted-checksum"

.field private static final CONFIG_BACKUP_COMPARE_PASS:I = 0x2

.field private static final CONFIG_BACKUP_ENCRYPTION_PATH:Ljava/lang/String; = "/data/misc/bluedroid/bt_config.bak.encrypted"

.field private static final CONFIG_BACKUP_PATH:Ljava/lang/String; = "/data/misc/bluedroid/bt_config.bak"

.field private static final CONFIG_BACKUP_PREFIX:Ljava/lang/String; = "bt_config-backup"

.field private static final CONFIG_CHECKSUM_ENCRYPTION_PATH:Ljava/lang/String; = "/data/misc/bluedroid/bt_config.checksum.encrypted"

.field private static final CONFIG_COMPARE_INIT:I = 0x0

.field private static final CONFIG_FILE_CHECKSUM_PATH:Ljava/lang/String; = "/data/misc/bluedroid/bt_config.conf.encrypted-checksum"

.field private static final CONFIG_FILE_COMPARE_PASS:I = 0x1

.field private static final CONFIG_FILE_ENCRYPTION_PATH:Ljava/lang/String; = "/data/misc/bluedroid/bt_config.conf.encrypted"

.field private static final CONFIG_FILE_HASH:Ljava/lang/String; = "hash"

.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "/data/misc/bluedroid/bt_config.conf"

.field private static final CONFIG_FILE_PREFIX:Ljava/lang/String; = "bt_config-origin"

.field private static final DBG:Z = false

.field private static final GCM_TAG_LENGTH:I = 0x80

.field private static final KEYALIAS:Ljava/lang/String; = "bluetooth-key-encrypted"

.field private static final KEY_LENGTH:I = 0x100

.field private static final KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final TAG:Ljava/lang/String; = "BluetoothKeystoreService"

.field private static final TRY_MAX:I = 0x3

.field private static sBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;


# instance fields
.field mBluetoothKeystoreNativeInterface:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

.field private mCleaningUp:Z

.field private mCompareResult:I

.field private mDecoder:Ljava/util/Base64$Decoder;

.field private mDecryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

.field private mEncoder:Ljava/util/Base64$Encoder;

.field private mEncryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

.field private final mEncryptKeyNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNiapMode:Z

.field private mNameDecryptKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameEncryptKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDecryptKey:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingEncryptKey:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingDecryptKey:Ljava/util/concurrent/BlockingQueue;

    .line 115
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingEncryptKey:Ljava/util/concurrent/BlockingQueue;

    .line 116
    const-string v1, "LinkKey"

    const-string v2, "LE_KEY_PENC"

    const-string v3, "LE_KEY_PID"

    const-string v4, "LE_KEY_LID"

    const-string v5, "LE_KEY_PCSRK"

    const-string v6, "LE_KEY_LENC"

    const-string v7, "LE_KEY_LCSRK"

    invoke-static/range {v1 .. v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncryptKeyNameList:Ljava/util/List;

    .line 119
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mDecoder:Ljava/util/Base64$Decoder;

    .line 120
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncoder:Ljava/util/Base64$Encoder;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new BluetoothKeystoreService isNiapMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 124
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mIsNiapMode:Z

    .line 125
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    .line 126
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->startThread()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->infoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/Map;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/Map;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingEncryptKey:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingDecryptKey:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->tryCompute(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method private backupConfigEncryptionFile()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/data/misc/bluedroid/bt_config.conf.encrypted"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v3, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    .line 504
    const-string v3, "/data/misc/bluedroid/bt_config.bak.encrypted"

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v3, v0

    .line 503
    invoke-static {v1, v2, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    const-string v1, "bt_config-origin"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "bt_config-backup"

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_2
    return-void
.end method

.method private cleanupFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/data/misc/bluedroid/bt_config.checksum.encrypted"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 396
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/data/misc/bluedroid/bt_config.conf.encrypted"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 397
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/misc/bluedroid/bt_config.bak.encrypted"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 398
    return-void
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 861
    const-string v0, "BluetoothKeystoreService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 743
    nop

    .line 746
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 747
    :try_start_0
    const-string p1, "decrypt: encryptedDataBase64 is null"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 748
    return-object v0

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mDecoder:Ljava/util/Base64$Decoder;

    invoke-virtual {v1, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 751
    invoke-static {}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    .line 752
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 753
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    .line 754
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getInitVector()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 755
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getOrCreateSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 757
    if-eqz v3, :cond_1

    .line 758
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 759
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getEncryptedData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 760
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0

    .line 762
    :cond_1
    const-string p1, "decrypt: secretKeyReference is null."

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :goto_0
    goto :goto_1

    .line 777
    :catch_0
    move-exception p1

    .line 778
    const-string v1, "decrypt had an invalid algorithm parameter"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 775
    :catch_1
    move-exception p1

    .line 776
    const-string v1, "decrypt had an invalid key"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :catch_2
    move-exception p1

    .line 774
    const-string v1, "decrypt had bad padding"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :catch_3
    move-exception p1

    .line 772
    const-string v1, "decrypt had a illegal block size"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :catch_4
    move-exception p1

    .line 770
    const-string v1, "decrypt could not find padding algorithm"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :catch_5
    move-exception p1

    .line 767
    const-string v1, "decrypt could not find cipher algorithm AES/GCM/NoPadding"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    :catch_6
    move-exception p1

    .line 765
    const-string v1, "decrypt: Failed to parse EncryptedData protobuf."

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :goto_1
    return-object v0
.end method

.method private doesComparePass(I)Z
    .locals 1

    .line 516
    iget v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 694
    nop

    .line 697
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 698
    :try_start_0
    const-string p1, "encrypt: data is null"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 699
    return-object v0

    .line 701
    :cond_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 702
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getOrCreateSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_2

    .line 705
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 706
    invoke-static {}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->newBuilder()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;

    move-result-object v2

    .line 707
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->setEncryptedData(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;

    move-result-object p1

    .line 708
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->setInitVector(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    .line 710
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->toByteArray()[B

    move-result-object p1

    .line 711
    if-nez p1, :cond_1

    .line 712
    const-string p1, "encrypt: Failed to serialize EncryptedData protobuf."

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 713
    return-object v0

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncoder:Ljava/util/Base64$Encoder;

    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 717
    :cond_2
    const-string p1, "encrypt: secretKeyReference is null."

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    goto :goto_1

    .line 727
    :catch_0
    move-exception p1

    .line 728
    const-string v1, "encrypt had an illegal block size"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 725
    :catch_1
    move-exception p1

    .line 726
    const-string v1, "encrypt had a padding problem"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :catch_2
    move-exception p1

    .line 724
    const-string v1, "encrypt received an invalid key"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :catch_3
    move-exception p1

    .line 722
    const-string v1, "encrypt had a padding exception"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :catch_4
    move-exception p1

    .line 720
    const-string v1, "encrypt could not find the algorithm: AES/GCM/NoPadding"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :goto_1
    return-object v0
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1

    .line 865
    const-string v0, "BluetoothKeystoreService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method public static declared-synchronized getBluetoothKeystoreService()Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;
    .locals 3

    const-class v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    monitor-enter v0

    .line 314
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->sBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 315
    const-string v1, "getBluetoothKeystoreService(): service is NULL"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit v0

    return-object v2

    .line 319
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->sBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    invoke-direct {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    const-string v1, "getBluetoothKeystoreService(): service is not available"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit v0

    return-object v2

    .line 323
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->sBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getEncryptedKeyData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 479
    if-nez p1, :cond_0

    .line 480
    const/4 p1, 0x0

    return-object p1

    .line 482
    :cond_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyStore()Ljava/security/KeyStore;
    .locals 4

    .line 784
    nop

    .line 785
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 787
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 789
    const/16 v2, 0x3ea

    :try_start_0
    invoke-static {v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreForUid(I)Ljava/security/KeyStore;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_1
    goto :goto_2

    .line 792
    :catch_0
    move-exception v2

    .line 793
    const-string v3, "cannot find the keystore"

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2

    .line 790
    :catch_1
    move-exception v2

    .line 791
    const-string v3, "cannot find crypto provider"

    invoke-static {v2, v3}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 795
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 797
    :cond_0
    return-object v0
.end method

.method private getOrCreateSecretKey()Ljavax/crypto/SecretKey;
    .locals 5

    .line 801
    const-string v0, "bluetooth-key-encrypted"

    .line 803
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 804
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 805
    nop

    .line 806
    invoke-virtual {v2, v0, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 808
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    goto :goto_0

    .line 811
    :cond_0
    const-string v0, "decrypt: secretKeyEntry is null."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 813
    :goto_0
    goto :goto_1

    .line 815
    :cond_1
    const-string v2, "AES"

    const-string v3, "AndroidKeyStore"

    .line 816
    invoke-static {v2, v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 818
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v0, "GCM"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 820
    invoke-virtual {v3, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v3, "NoPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/16 v3, 0x100

    .line 822
    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/16 v3, 0x3ea

    .line 823
    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUid(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 824
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    .line 826
    invoke-virtual {v2, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 827
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 842
    :goto_1
    goto :goto_2

    .line 840
    :catch_0
    move-exception v0

    .line 841
    const-string v2, "getOrCreateSecretKey had a provider exception."

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2

    .line 837
    :catch_1
    move-exception v0

    .line 838
    const-string v2, "getOrCreateSecretKey had an unrecoverable entry exception."

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 835
    :catch_2
    move-exception v0

    .line 836
    const-string v2, "getOrCreateSecretKey cannot find crypto provider"

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 833
    :catch_3
    move-exception v0

    .line 834
    const-string v2, "getOrCreateSecretKey cannot find algorithm"

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 831
    :catch_4
    move-exception v0

    .line 832
    const-string v2, "getOrCreateSecretKey had an invalid algorithm parameter"

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 829
    :catch_5
    move-exception v0

    .line 830
    const-string v2, "cannot find the keystore: AndroidKeyStore"

    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 843
    :goto_2
    return-object v1
.end method

.method private static infoLog(Ljava/lang/String;)V
    .locals 0

    .line 858
    return-void
.end method

.method private isAvailable()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCleaningUp:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isFactoryReset()Z
    .locals 2

    .line 294
    const-string v0, "persist.bluetooth.factoryreset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private readChecksumFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    return-void

    .line 584
    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    .line 585
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncoder:Ljava/util/Base64$Encoder;

    invoke-virtual {v0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    .line 586
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    return-void
.end method

.method private readHashFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 560
    const/16 v0, 0xfa0

    new-array v0, v0, [B

    .line 561
    nop

    .line 563
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 564
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 566
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 567
    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 571
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 572
    nop

    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 573
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v1, v1, 0x100

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 574
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 577
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    return-void
.end method

.method private static reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A bluetoothkey store error was encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothKeystoreService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    return-void
.end method

.method private static reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A keystore error was encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothKeystoreService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    return-void
.end method

.method private static declared-synchronized setBluetoothKeystoreService(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)V
    .locals 3

    const-class v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    monitor-enter v0

    .line 328
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothKeystoreService(): set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 329
    sput-object p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->sBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit v0

    return-void

    .line 327
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private startThread()V
    .locals 2

    .line 431
    new-instance v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;-><init>(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;Z)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    .line 432
    new-instance v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;-><init>(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;Z)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mDecryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    .line 433
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->start()V

    .line 434
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mDecryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->start()V

    .line 435
    return-void
.end method

.method private tryCompute(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 667
    nop

    .line 668
    nop

    .line 670
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 671
    return-object v0

    .line 670
    :cond_0
    const/4 v1, 0x0

    .line 674
    :goto_0
    if-nez v0, :cond_2

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 675
    if-eqz p2, :cond_1

    .line 676
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 678
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    :cond_2
    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 185
    const-string v0, "cleanup"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "already doing cleanup"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 190
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCleaningUp:Z

    .line 192
    sget-object v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->sBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    if-nez v0, :cond_1

    .line 193
    const-string v0, "cleanup() called before start()"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 194
    return-void

    .line 198
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->setBluetoothKeystoreService(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)V

    .line 201
    iget-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mBluetoothKeystoreNativeInterface:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->cleanup()V

    .line 202
    iput-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mBluetoothKeystoreNativeInterface:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    .line 204
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mIsNiapMode:Z

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupForNiapModeEnable()V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupForNiapModeDisable()V

    .line 209
    :goto_0
    return-void
.end method

.method public cleanupAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupFile()V

    .line 391
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupMemory()V

    .line 392
    return-void
.end method

.method public cleanupForNiapModeDisable()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 236
    return-void
.end method

.method public cleanupForNiapModeEnable()V
    .locals 2

    .line 217
    :try_start_0
    const-string v0, "bt_config-origin"

    const-string v1, "hash"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->setEncryptKeyOrRemoveKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "encrypt could not find the algorithm: SHA256"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :catch_1
    move-exception v0

    .line 221
    const-string v1, "IO error while file operating."

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 219
    const-string v1, "Interrupted while operating."

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 224
    :goto_0
    nop

    .line 225
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupMemory()V

    .line 226
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->stopThread()V

    .line 227
    return-void
.end method

.method public cleanupMemory()V
    .locals 1

    .line 405
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->stopThread()V

    .line 406
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 408
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->startThread()V

    .line 409
    return-void
.end method

.method public compareFileHash(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 525
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareFileHash: File does not exist, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->infoLog(Ljava/lang/String;)V

    .line 527
    return v0

    .line 530
    :cond_0
    const/4 v1, 0x0

    .line 531
    const-string v2, "/data/misc/bluedroid/bt_config.conf"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    const-string v1, "bt_config-origin"

    goto :goto_0

    .line 533
    :cond_1
    const-string v2, "/data/misc/bluedroid/bt_config.bak"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    const-string v1, "bt_config-backup"

    .line 536
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareFileHash: Unexpected hash file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 538
    return v0

    .line 541
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->readHashFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 544
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareFileHash: NameEncryptKey doesn\'t contain the key, prefix:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 546
    return v0

    .line 548
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 549
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->tryCompute(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 550
    if-nez p1, :cond_5

    .line 551
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareFileHash: decrypt encrypted hash data fail, prefix: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 552
    return v0

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public factoryReset()V
    .locals 2

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "IO error while file operating."

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void
.end method

.method public getCompareResult()I
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCompareResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    return v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKey: prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->infoLog(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    const/4 p1, 0x0

    return-object p1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNameDecryptKey()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    return-object v0
.end method

.method public getNameEncryptKey()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    return-object v0
.end method

.method public initJni()V
    .locals 1

    .line 301
    const-string v0, "initJni()"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mBluetoothKeystoreNativeInterface:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->init()V

    .line 304
    return-void
.end method

.method public loadConfigData()V
    .locals 5

    .line 244
    const-string v0, "/data/misc/bluedroid/bt_config.checksum.encrypted"

    :try_start_0
    const-string v1, "loadConfigData"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->isFactoryReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupAll()V

    .line 250
    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 251
    const-string v2, "Load encryption file."

    invoke-static {v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->loadEncryptionFile(Ljava/lang/String;Z)V

    .line 255
    const-string v0, "/data/misc/bluedroid/bt_config.conf"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->compareFileHash(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 256
    const-string v0, "bt_config.conf checksum pass."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    .line 259
    :cond_1
    const-string v0, "/data/misc/bluedroid/bt_config.bak"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->compareFileHash(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "bt_config.bak checksum pass."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I

    .line 264
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->doesComparePass(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "/data/misc/bluedroid/bt_config.conf.encrypted"

    if-eqz v0, :cond_3

    .line 265
    :try_start_1
    invoke-virtual {p0, v4, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->loadEncryptionFile(Ljava/lang/String;Z)V

    goto :goto_0

    .line 266
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->doesComparePass(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    const-string v1, "bt_config-origin"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "/data/misc/bluedroid/bt_config.bak.encrypted"

    invoke-virtual {p0, v0, v2}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->loadEncryptionFile(Ljava/lang/String;Z)V

    goto :goto_0

    .line 272
    :cond_4
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mIsNiapMode:Z

    if-eqz v0, :cond_5

    .line 273
    const-string v0, "Config file conf and bak checksum check fail."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 275
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupAll()V

    .line 276
    return-void

    .line 280
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mIsNiapMode:Z

    if-nez v0, :cond_7

    .line 281
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->stopThread()V

    .line 282
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupFile()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v1, "could not find the algorithm: SHA256"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2

    .line 286
    :catch_1
    move-exception v0

    .line 287
    const-string v1, "Interrupted while operating."

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :catch_2
    move-exception v0

    .line 285
    const-string v1, "IO error while file operating."

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 290
    :cond_7
    :goto_1
    nop

    .line 291
    :goto_2
    return-void
.end method

.method public loadEncryptionFile(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 643
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    return-void

    .line 646
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object p1

    .line 647
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 648
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 649
    if-gez v2, :cond_1

    .line 650
    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 653
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    if-eqz p2, :cond_2

    .line 657
    iget-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingDecryptKey:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_2
    goto :goto_0

    .line 662
    :cond_3
    nop

    .line 663
    return-void

    .line 660
    :catch_0
    move-exception p1

    .line 661
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "read encryption file all line fail"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseConfigFile(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 595
    nop

    .line 596
    nop

    .line 597
    nop

    .line 598
    nop

    .line 601
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    return-void

    .line 604
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object p1

    .line 605
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 606
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    const-string v1, ""

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 608
    goto :goto_0

    .line 611
    :cond_1
    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 612
    if-gez v3, :cond_2

    .line 613
    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 617
    iget-object v5, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncryptKeyNameList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 618
    goto :goto_0

    .line 621
    :cond_3
    if-nez v1, :cond_4

    .line 622
    goto :goto_0

    .line 625
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 626
    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 628
    goto :goto_0

    .line 631
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingEncryptKey:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 633
    goto :goto_0

    .line 634
    :cond_6
    return-void
.end method

.method public saveEncryptedKey()V
    .locals 5

    .line 454
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->stopThread()V

    .line 455
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 456
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 457
    iget-object v2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    const-string v4, "bt_config-origin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "bt_config-backup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getEncryptedKeyData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 459
    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getEncryptedKeyData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :goto_2
    goto :goto_0

    .line 464
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->startThread()V

    .line 467
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 468
    const-string v2, "/data/misc/bluedroid/bt_config.checksum.encrypted"

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v4, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v0, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 470
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 471
    const-string v0, "/data/misc/bluedroid/bt_config.conf.encrypted"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_4
    nop

    .line 476
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "write encryption file fail"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncryptKeyOrRemoveKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEncryptKeyOrRemoveKey: prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->infoLog(Ljava/lang/String;)V

    .line 353
    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 356
    :cond_0
    const-string v0, "bt_config-origin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 357
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanupAll()V

    goto :goto_1

    .line 359
    :cond_1
    const-string v1, "hash"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 360
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->backupConfigEncryptionFile()V

    .line 361
    const-string p2, "/data/misc/bluedroid/bt_config.conf"

    invoke-direct {p0, p2, v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->readHashFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    .line 364
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    .line 365
    const-string v1, "bt_config-backup"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 366
    const-string p1, "Since the hash is same with previous, don\'t need encrypt again."

    invoke-static {p1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->infoLog(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingEncryptKey:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 370
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->saveEncryptedKey()V

    .line 372
    :cond_3
    :goto_1
    return-void

    .line 375
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 377
    iget-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameEncryptKey:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mNameDecryptKey:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object p2, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mPendingEncryptKey:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 383
    :goto_2
    return-void

    .line 354
    :cond_6
    :goto_3
    return-void
.end method

.method public start()V
    .locals 3

    .line 133
    const-string v0, "start"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->sBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "start() called twice"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->errorLog(Ljava/lang/String;)V

    .line 138
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 144
    if-nez v0, :cond_1

    .line 145
    const-string v0, "cannot find the keystore."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->debugLog(Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_1
    nop

    .line 150
    invoke-static {}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;->getInstance()Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    move-result-object v1

    .line 149
    const-string v2, "BluetoothKeystoreNativeInterface cannot be null when BluetoothKeystore starts"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    iput-object v1, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mBluetoothKeystoreNativeInterface:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreNativeInterface;

    .line 154
    invoke-static {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->setBluetoothKeystoreService(Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;)V

    .line 157
    :try_start_0
    const-string v1, "bluetooth-key-encrypted"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mIsNiapMode:Z

    if-eqz v0, :cond_2

    .line 158
    const-string v0, "Enable NIAP mode for the first time, pass hash check."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->infoLog(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mCompareResult:I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return-void

    .line 165
    :cond_2
    nop

    .line 167
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->loadConfigData()V

    .line 168
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "cannot find the keystore"

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public stopThread()V
    .locals 2

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->setWaitQueueEmptyForStop()V

    .line 419
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mEncryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->join()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mDecryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mDecryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->setWaitQueueEmptyForStop()V

    .line 423
    iget-object v0, p0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->mDecryptDataThread:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService$ComputeDataThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_1
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    const-string v1, "Interrupted while operating."

    invoke-static {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->reportBluetoothKeystoreException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void
.end method
