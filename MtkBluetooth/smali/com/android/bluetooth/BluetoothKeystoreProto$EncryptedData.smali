.class public final Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothKeystoreProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothKeystoreProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;",
        "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

.field public static final ENCRYPTED_DATA_FIELD_NUMBER:I = 0x3

.field public static final INIT_VECTOR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticationData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private encryptedData_:Lcom/google/protobuf/ByteString;

.field private initVector_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 493
    new-instance v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;-><init>()V

    .line 496
    sput-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    .line 497
    const-class v1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 499
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 71
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->initVector_:Lcom/google/protobuf/ByteString;

    .line 72
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->authenticationData_:Lcom/google/protobuf/ByteString;

    .line 73
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->encryptedData_:Lcom/google/protobuf/ByteString;

    .line 74
    return-void
.end method

.method static synthetic access$000()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->setInitVector(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->clearInitVector()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->setAuthenticationData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->clearAuthenticationData()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->setEncryptedData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->clearEncryptedData()V

    return-void
.end method

.method private clearAuthenticationData()V
    .locals 1

    .line 172
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    .line 173
    invoke-static {}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getDefaultInstance()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getAuthenticationData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->authenticationData_:Lcom/google/protobuf/ByteString;

    .line 174
    return-void
.end method

.method private clearEncryptedData()V
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    .line 207
    invoke-static {}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getDefaultInstance()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getEncryptedData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->encryptedData_:Lcom/google/protobuf/ByteString;

    .line 208
    return-void
.end method

.method private clearInitVector()V
    .locals 1

    .line 122
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    .line 123
    invoke-static {}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getDefaultInstance()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getInitVector()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->initVector_:Lcom/google/protobuf/ByteString;

    .line 124
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1

    .line 502
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 285
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;
    .locals 1

    .line 288
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;",
            ">;"
        }
    .end annotation

    .line 508
    sget-object v0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAuthenticationData(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 158
    if-eqz p1, :cond_0

    .line 161
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    .line 162
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->authenticationData_:Lcom/google/protobuf/ByteString;

    .line 163
    return-void

    .line 159
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setEncryptedData(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 196
    if-eqz p1, :cond_0

    .line 199
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    .line 200
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->encryptedData_:Lcom/google/protobuf/ByteString;

    .line 201
    return-void

    .line 197
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setInitVector(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 108
    if-eqz p1, :cond_0

    .line 111
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    .line 112
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->initVector_:Lcom/google/protobuf/ByteString;

    .line 113
    return-void

    .line 109
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 441
    sget-object p2, Lcom/android/bluetooth/BluetoothKeystoreProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 486
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 483
    :pswitch_0
    return-object p3

    .line 480
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 465
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    .line 466
    if-nez p1, :cond_1

    .line 467
    const-class p2, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    monitor-enter p2

    .line 468
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 473
    sput-object p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    .line 475
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 477
    :cond_1
    :goto_0
    return-object p1

    .line 462
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    return-object p1

    .line 449
    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "initVector_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "authenticationData_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "encryptedData_"

    aput-object p3, p1, p2

    .line 455
    nop

    .line 458
    sget-object p2, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0000\u0002\n\u0001\u0003\n\u0002"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 446
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData$Builder;-><init>(Lcom/android/bluetooth/BluetoothKeystoreProto$1;)V

    return-object p1

    .line 443
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAuthenticationData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->authenticationData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEncryptedData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->encryptedData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInitVector()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->initVector_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAuthenticationData()Z
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEncryptedData()Z
    .locals 1

    .line 183
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitVector()Z
    .locals 2

    .line 87
    iget v0, p0, Lcom/android/bluetooth/BluetoothKeystoreProto$EncryptedData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
