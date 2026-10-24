.class public final enum Lcom/onesignal/y1$g;
.super Ljava/lang/Enum;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/y1$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/onesignal/y1$g;

.field public static final enum s:Lcom/onesignal/y1$g;

.field public static final synthetic t:[Lcom/onesignal/y1$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/onesignal/y1$g;

    const-string v1, "TOP_BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/y1$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/y1$g;->r:Lcom/onesignal/y1$g;

    .line 2
    new-instance v1, Lcom/onesignal/y1$g;

    const-string v3, "BOTTOM_BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/y1$g;-><init>(Ljava/lang/String;I)V

    .line 3
    new-instance v3, Lcom/onesignal/y1$g;

    const-string v5, "CENTER_MODAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/y1$g;-><init>(Ljava/lang/String;I)V

    .line 4
    new-instance v5, Lcom/onesignal/y1$g;

    const-string v7, "FULL_SCREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/onesignal/y1$g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/onesignal/y1$g;->s:Lcom/onesignal/y1$g;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/onesignal/y1$g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/onesignal/y1$g;->t:[Lcom/onesignal/y1$g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/y1$g;
    .locals 1

    .line 1
    const-class v0, Lcom/onesignal/y1$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/y1$g;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/y1$g;
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/y1$g;->t:[Lcom/onesignal/y1$g;

    invoke-virtual {v0}, [Lcom/onesignal/y1$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/y1$g;

    return-object v0
.end method
