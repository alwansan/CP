.class public final enum Lcom/onesignal/o$f;
.super Ljava/lang/Enum;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/o$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/onesignal/o$f;

.field public static final enum s:Lcom/onesignal/o$f;

.field public static final enum t:Lcom/onesignal/o$f;

.field public static final synthetic u:[Lcom/onesignal/o$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/onesignal/o$f;

    const-string v1, "STARTUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/o$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/o$f;->r:Lcom/onesignal/o$f;

    new-instance v1, Lcom/onesignal/o$f;

    const-string v3, "PROMPT_LOCATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/o$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/o$f;->s:Lcom/onesignal/o$f;

    new-instance v3, Lcom/onesignal/o$f;

    const-string v5, "SYNC_SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/o$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/o$f;->t:Lcom/onesignal/o$f;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/onesignal/o$f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/onesignal/o$f;->u:[Lcom/onesignal/o$f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/o$f;
    .locals 1

    .line 1
    const-class v0, Lcom/onesignal/o$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/o$f;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/o$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/o$f;->u:[Lcom/onesignal/o$f;

    invoke-virtual {v0}, [Lcom/onesignal/o$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/o$f;

    return-object v0
.end method
