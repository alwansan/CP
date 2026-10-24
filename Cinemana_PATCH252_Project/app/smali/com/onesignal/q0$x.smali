.class public final enum Lcom/onesignal/q0$x;
.super Ljava/lang/Enum;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/q0$x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/onesignal/q0$x;

.field public static final enum s:Lcom/onesignal/q0$x;

.field public static final enum t:Lcom/onesignal/q0$x;

.field public static final enum u:Lcom/onesignal/q0$x;

.field public static final synthetic v:[Lcom/onesignal/q0$x;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/onesignal/q0$x;

    const-string v1, "PERMISSION_GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/q0$x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/q0$x;->r:Lcom/onesignal/q0$x;

    .line 2
    new-instance v1, Lcom/onesignal/q0$x;

    const-string v3, "PERMISSION_DENIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/q0$x;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/q0$x;->s:Lcom/onesignal/q0$x;

    .line 3
    new-instance v3, Lcom/onesignal/q0$x;

    const-string v5, "LOCATION_PERMISSIONS_MISSING_MANIFEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/q0$x;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/q0$x;->t:Lcom/onesignal/q0$x;

    .line 4
    new-instance v5, Lcom/onesignal/q0$x;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/onesignal/q0$x;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/onesignal/q0$x;->u:Lcom/onesignal/q0$x;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/onesignal/q0$x;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/onesignal/q0$x;->v:[Lcom/onesignal/q0$x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/q0$x;
    .locals 1

    .line 1
    const-class v0, Lcom/onesignal/q0$x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/q0$x;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/q0$x;
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/q0$x;->v:[Lcom/onesignal/q0$x;

    invoke-virtual {v0}, [Lcom/onesignal/q0$x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/q0$x;

    return-object v0
.end method
