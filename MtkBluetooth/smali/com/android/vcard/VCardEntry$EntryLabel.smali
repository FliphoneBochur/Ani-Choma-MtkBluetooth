.class public final enum Lcom/android/vcard/VCardEntry$EntryLabel;
.super Ljava/lang/Enum;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryLabel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/vcard/VCardEntry$EntryLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum IM:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

.field public static final enum WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 102
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 103
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 104
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "EMAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 105
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "POSTAL_ADDRESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 106
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "ORGANIZATION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 107
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "IM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 108
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "PHOTO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 109
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "WEBSITE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 110
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "SIP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 111
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "NICKNAME"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 112
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "NOTE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 113
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "BIRTHDAY"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 114
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANNIVERSARY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 115
    new-instance v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    const-string v1, "ANDROID_CUSTOM"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/vcard/VCardEntry$EntryLabel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    .line 101
    const/16 v1, 0xe

    new-array v1, v1, [Lcom/android/vcard/VCardEntry$EntryLabel;

    sget-object v16, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 101
    const-class v0, Lcom/android/vcard/VCardEntry$EntryLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public static values()[Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .line 101
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->$VALUES:[Lcom/android/vcard/VCardEntry$EntryLabel;

    invoke-virtual {v0}, [Lcom/android/vcard/VCardEntry$EntryLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method
