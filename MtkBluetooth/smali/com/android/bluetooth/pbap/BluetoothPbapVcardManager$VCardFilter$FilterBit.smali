.class final enum Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
.super Ljava/lang/Enum;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterBit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum DATETIME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum SOUND:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

.field public static final enum URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;


# instance fields
.field public final excludeForV21:Z

.field public final onlyCheckV21:Z

.field public final pos:I

.field public final prop:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1205
    new-instance v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v1, "FN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "FN"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1206
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v9, "PHOTO"

    const/4 v10, 0x1

    const/4 v11, 0x3

    const-string v12, "PHOTO"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1207
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v2, "BDAY"

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-string v5, "BDAY"

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1208
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v9, "ADR"

    const/4 v10, 0x3

    const/4 v11, 0x5

    const-string v12, "ADR"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1209
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v2, "EMAIL"

    const/4 v3, 0x4

    const/16 v4, 0x8

    const-string v5, "EMAIL"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1210
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v9, "TITLE"

    const/4 v10, 0x5

    const/16 v11, 0xc

    const-string v12, "TITLE"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1211
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v2, "ORG"

    const/4 v3, 0x6

    const/16 v4, 0x10

    const-string v5, "ORG"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1212
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v9, "NOTE"

    const/4 v10, 0x7

    const/16 v11, 0x11

    const-string v12, "NOTE"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1213
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v2, "SOUND"

    const/16 v3, 0x8

    const/16 v4, 0x13

    const-string v5, "SOUND"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->SOUND:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1214
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v9, "URL"

    const/16 v10, 0x9

    const/16 v11, 0x14

    const-string v12, "URL"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1215
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v2, "NICKNAME"

    const/16 v3, 0xa

    const/16 v4, 0x17

    const-string v5, "NICKNAME"

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1216
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const-string v9, "DATETIME"

    const/16 v10, 0xb

    const/16 v11, 0x1c

    const-string v12, "X-IRMC-CALL-DATETIME"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;-><init>(Ljava/lang/String;IILjava/lang/String;ZZ)V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->DATETIME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    .line 1203
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->FN:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->BDAY:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ADR:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->EMAIL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->TITLE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->ORG:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NOTE:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->SOUND:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->URL:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->NICKNAME:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->$VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1224
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    .line 1225
    iput-object p4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->prop:Ljava/lang/String;

    .line 1226
    iput-boolean p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->onlyCheckV21:Z

    .line 1227
    iput-boolean p6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->excludeForV21:Z

    .line 1228
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .locals 1

    .line 1203
    const-class v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .locals 1

    .line 1203
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->$VALUES:[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    invoke-virtual {v0}, [Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    return-object v0
.end method
