.class final enum Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;
.super Ljava/lang/Enum;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PropertyMask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum DATETIME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum LABEL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum NAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum TEL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

.field public static final enum VERSION:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;


# instance fields
.field public final pos:I

.field public final prop:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1305
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->VERSION:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1306
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "FN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1307
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "NAME"

    const/4 v4, 0x2

    const-string v5, "N"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->NAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1308
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "PHOTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1309
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "BDAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1310
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "ADR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1311
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "LABEL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->LABEL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1312
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "TEL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->TEL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1313
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "EMAIL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1314
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "TITLE"

    const/16 v11, 0x9

    const/16 v12, 0xc

    invoke-direct {v0, v1, v11, v12, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1315
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "ORG"

    const/16 v13, 0xa

    const/16 v14, 0x10

    invoke-direct {v0, v1, v13, v14, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1316
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "NOTE"

    const/16 v14, 0xb

    const/16 v15, 0x11

    const-string v13, "NOTE"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1317
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "URL"

    const/16 v13, 0x14

    const-string v14, "URL"

    invoke-direct {v0, v1, v12, v13, v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1318
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "NICKNAME"

    const/16 v13, 0xd

    const/16 v14, 0x17

    const-string v15, "NICKNAME"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1319
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const-string v1, "DATETIME"

    const/16 v13, 0xe

    const/16 v14, 0x1c

    const-string v15, "DATETIME"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->DATETIME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    .line 1303
    const/16 v1, 0xf

    new-array v1, v1, [Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    sget-object v13, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->VERSION:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v13, v1, v2

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->NAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->LABEL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->TEL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->$VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1324
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1325
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->pos:I

    .line 1326
    iput-object p4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->prop:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;
    .locals 1

    .line 1303
    const-class v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;
    .locals 1

    .line 1303
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->$VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    invoke-virtual {v0}, [Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector$PropertyMask;

    return-object v0
.end method
