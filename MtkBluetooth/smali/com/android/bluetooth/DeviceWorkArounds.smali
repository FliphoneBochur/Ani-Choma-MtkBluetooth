.class public final Lcom/android/bluetooth/DeviceWorkArounds;
.super Ljava/lang/Object;
.source "DeviceWorkArounds.java"


# static fields
.field public static final BREZZA_ZDI_CARKIT:Ljava/lang/String; = "28:a1:83"

.field public static final FORD_SYNC_CARKIT:Ljava/lang/String; = "00:1E:AE"

.field public static final HONDA_CARKIT:Ljava/lang/String; = "64:D4:BD"

.field public static final MERCEDES_BENZ_CARKIT:Ljava/lang/String; = "00:26:e8"

.field public static final PCM_CARKIT:Ljava/lang/String; = "9C:DF:03"

.field public static final SYNC_CARKIT:Ljava/lang/String; = "D0:39:72"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
