.class final Lcom/android/bluetooth/btservice/DiscoveringPackage;
.super Ljava/lang/Object;
.source "DiscoveringPackage.java"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/bluetooth/btservice/DiscoveringPackage;->mPackageName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/android/bluetooth/btservice/DiscoveringPackage;->mPermission:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/bluetooth/btservice/DiscoveringPackage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/bluetooth/btservice/DiscoveringPackage;->mPermission:Ljava/lang/String;

    return-object v0
.end method
