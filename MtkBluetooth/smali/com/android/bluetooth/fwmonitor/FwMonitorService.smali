.class public Lcom/android/bluetooth/fwmonitor/FwMonitorService;
.super Ljava/lang/Object;
.source "FwMonitorService.java"


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "FwMonitorService"

.field static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "FwMonitorService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/fwmonitor/FwMonitorService;->VDBG:Z

    .line 54
    invoke-static {}, Lcom/android/bluetooth/fwmonitor/FwMonitorService;->classInitNative()V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayLittle2Big([B)V
    .locals 3

    .line 74
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 76
    aget-byte v1, p0, v0

    .line 77
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, p0, v0

    .line 78
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-byte v1, p0, v2

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private static intLittle2Big(I)I
    .locals 2

    .line 66
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 70
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method private static printByteArrayAsHex([B)V
    .locals 6

    .line 83
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    .line 84
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private static printByteArrayAsHex([BII)V
    .locals 3

    .line 91
    nop

    :goto_0
    if-ge p1, p2, :cond_0

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-byte v2, p0, p1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 91
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private static shortLittle2Big(S)S
    .locals 2

    .line 58
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 61
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0
.end method


# virtual methods
.method handleFwMonitorRsp([B)V
    .locals 17

    .line 100
    move-object/from16 v0, p1

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 104
    nop

    .line 105
    nop

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " data.length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FwMonitorService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FwMonitorService "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 119
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/fwmonitor/FwMonitorService;->printByteArrayAsHex([B)V

    .line 121
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, v0, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x1

    aget-byte v6, v0, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v6, 0x2

    aget-byte v7, v0, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v7, 0x3

    aget-byte v8, v0, v7

    .line 122
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v8, 0x4

    aget-byte v9, v0, v8

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v9, 0x5

    aget-byte v10, v0, v9

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v3, v9

    .line 121
    const-string v9, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 123
    nop

    .line 125
    const-string v9, ""

    move v10, v4

    move-object v11, v9

    :goto_0
    const/16 v12, 0xf9

    if-ge v10, v12, :cond_1

    .line 127
    add-int v12, v1, v10

    aget-byte v13, v0, v12

    if-nez v13, :cond_0

    .line 128
    goto :goto_1

    .line 129
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v11, v0, v12

    int-to-char v11, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 125
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    nop

    .line 132
    move v1, v4

    :goto_2
    const/16 v10, 0xff

    if-ge v1, v7, :cond_2

    .line 134
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v10, v1

    aget-byte v9, v0, v10

    invoke-static {v9}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    :cond_2
    const/16 v1, 0x102

    .line 137
    const/16 v12, 0x103

    aget-byte v1, v0, v1

    .line 138
    const/16 v13, 0x104

    aget-byte v12, v0, v12

    .line 139
    aget-byte v13, v0, v13

    and-int/2addr v13, v10

    int-to-short v13, v13

    const/16 v14, 0x105

    aget-byte v14, v0, v14

    and-int/2addr v14, v10

    int-to-short v14, v14

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    int-to-short v13, v13

    .line 140
    const/16 v14, 0x106

    aget-byte v14, v0, v14

    and-int/2addr v14, v10

    int-to-short v14, v14

    const/16 v15, 0x107

    aget-byte v15, v0, v15

    and-int/2addr v15, v10

    int-to-short v15, v15

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    int-to-short v14, v14

    .line 141
    const/16 v15, 0x108

    aget-byte v15, v0, v15

    .line 142
    const/16 v16, 0x109

    aget-byte v4, v0, v16

    .line 143
    const/16 v16, 0x10a

    aget-byte v8, v0, v16

    .line 144
    const/16 v16, 0x10b

    aget-byte v7, v0, v16

    and-int/2addr v7, v10

    shl-int/lit8 v7, v7, 0x18

    const/16 v16, 0x10c

    aget-byte v5, v0, v16

    and-int/2addr v5, v10

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    const/16 v7, 0x10d

    aget-byte v7, v0, v7

    and-int/2addr v7, v10

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    const/16 v7, 0x10e

    aget-byte v7, v0, v7

    and-int/2addr v7, v10

    or-int/2addr v5, v7

    .line 147
    const/16 v7, 0x10f

    aget-byte v7, v0, v7

    and-int/2addr v7, v10

    int-to-short v7, v7

    const/16 v16, 0x110

    aget-byte v6, v0, v16

    and-int/2addr v6, v10

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    int-to-short v6, v6

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remote Addr: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Remote Name: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Device Class: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception type: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lmp version: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lmp_subversion: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " manufacturer: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tx_power: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rssi: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " device_info: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current_clock: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " choppy_counter: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v3, 0xe

    new-array v4, v3, [I

    .line 158
    const/16 v5, 0xa

    new-array v6, v5, [B

    .line 159
    const/4 v7, 0x2

    new-array v8, v7, [B

    .line 160
    new-array v7, v5, [B

    .line 162
    const/16 v9, 0x20

    new-array v10, v9, [B

    .line 163
    const/16 v11, 0x111

    .line 164
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "FwMonitorService start handle exc_type, string="

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 165
    array-length v12, v0

    invoke-static {v0, v11, v12}, Lcom/android/bluetooth/fwmonitor/FwMonitorService;->printByteArrayAsHex([BII)V

    .line 166
    if-eqz v1, :cond_11

    const/4 v12, 0x1

    if-eq v1, v12, :cond_10

    const/4 v12, 0x2

    if-eq v1, v12, :cond_c

    const/4 v12, 0x3

    if-eq v1, v12, :cond_7

    const/4 v6, 0x4

    if-eq v1, v6, :cond_3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unknown exception type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 219
    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_4

    .line 221
    add-int/lit8 v2, v11, 0x1

    aget-byte v6, v0, v11

    const/16 v8, 0xff

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v11, v2, 0x1

    aget-byte v2, v0, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, v11, 0x1

    aget-byte v11, v0, v11

    and-int/2addr v11, v8

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v2, v11

    add-int/lit8 v11, v6, 0x1

    aget-byte v6, v0, v6

    and-int/2addr v6, v8

    or-int/2addr v2, v6

    aput v2, v4, v1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 225
    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_5

    .line 227
    add-int/lit8 v2, v11, 0x1

    aget-byte v3, v0, v11

    aput-byte v3, v7, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    move v11, v2

    goto :goto_4

    .line 230
    :cond_5
    add-int/lit8 v1, v11, 0x1

    aget-byte v2, v0, v11

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    .line 233
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_6

    .line 235
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    aput-byte v2, v10, v4

    .line 233
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_5

    .line 237
    :cond_6
    goto/16 :goto_d

    .line 196
    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_8

    .line 198
    add-int/lit8 v2, v11, 0x1

    aget-byte v6, v0, v11

    const/16 v11, 0xff

    and-int/2addr v6, v11

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v12, v2, 0x1

    aget-byte v2, v0, v2

    and-int/2addr v2, v11

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, v12, 0x1

    aget-byte v12, v0, v12

    and-int/2addr v12, v11

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v2, v12

    add-int/lit8 v12, v6, 0x1

    aget-byte v6, v0, v6

    and-int/2addr v6, v11

    or-int/2addr v2, v6

    aput v2, v4, v1

    .line 196
    add-int/lit8 v1, v1, 0x1

    move v11, v12

    goto :goto_6

    .line 202
    :cond_8
    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    .line 204
    add-int/lit8 v3, v11, 0x1

    aget-byte v4, v0, v11

    aput-byte v4, v8, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    move v11, v3

    goto :goto_7

    .line 207
    :cond_9
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v5, :cond_a

    .line 209
    add-int/lit8 v2, v11, 0x1

    aget-byte v3, v0, v11

    aput-byte v3, v7, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    move v11, v2

    goto :goto_8

    .line 212
    :cond_a
    const/4 v4, 0x0

    :goto_9
    if-ge v4, v9, :cond_b

    .line 214
    add-int/lit8 v1, v11, 0x1

    aget-byte v2, v0, v11

    aput-byte v2, v10, v4

    .line 212
    add-int/lit8 v4, v4, 0x1

    move v11, v1

    goto :goto_9

    .line 216
    :cond_b
    goto :goto_d

    .line 178
    :cond_c
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v3, :cond_d

    .line 180
    add-int/lit8 v2, v11, 0x1

    aget-byte v7, v0, v11

    const/16 v8, 0xff

    and-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v11, v2, 0x1

    aget-byte v2, v0, v2

    and-int/2addr v2, v8

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v7

    add-int/lit8 v7, v11, 0x1

    aget-byte v11, v0, v11

    and-int/2addr v11, v8

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v2, v11

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, v0, v7

    and-int/2addr v7, v8

    or-int/2addr v2, v7

    aput v2, v4, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 184
    :cond_d
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v5, :cond_e

    .line 186
    add-int/lit8 v2, v11, 0x1

    aget-byte v3, v0, v11

    aput-byte v3, v6, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    move v11, v2

    goto :goto_b

    .line 189
    :cond_e
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v9, :cond_f

    .line 191
    add-int/lit8 v1, v11, 0x1

    aget-byte v2, v0, v11

    aput-byte v2, v10, v4

    .line 189
    add-int/lit8 v4, v4, 0x1

    move v11, v1

    goto :goto_c

    .line 193
    :cond_f
    goto :goto_d

    .line 175
    :cond_10
    goto :goto_d

    .line 169
    :cond_11
    const/16 v1, 0x112

    aget-byte v2, v0, v11

    .line 170
    const/16 v2, 0x113

    aget-byte v1, v0, v1

    .line 171
    aget-byte v0, v0, v2

    .line 172
    nop

    .line 243
    :goto_d
    return-void
.end method

.method public native initNative()V
.end method
