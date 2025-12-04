.class public final enum Lcom/android/bluetooth/mapclient/MasClient$CharsetType;
.super Ljava/lang/Enum;
.source "MasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MasClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CharsetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/bluetooth/mapclient/MasClient$CharsetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

.field public static final enum NATIVE:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

.field public static final enum UTF_8:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 205
    new-instance v0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->NATIVE:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    new-instance v0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    const-string v1, "UTF_8"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->UTF_8:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    .line 204
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    sget-object v4, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->NATIVE:Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->$VALUES:[Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/bluetooth/mapclient/MasClient$CharsetType;
    .locals 1

    .line 204
    const-class v0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    return-object p0
.end method

.method public static values()[Lcom/android/bluetooth/mapclient/MasClient$CharsetType;
    .locals 1

    .line 204
    sget-object v0, Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->$VALUES:[Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    invoke-virtual {v0}, [Lcom/android/bluetooth/mapclient/MasClient$CharsetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/mapclient/MasClient$CharsetType;

    return-object v0
.end method
