.class public final enum Lcom/shabakaty/downloader/oy2$e;
.super Ljava/lang/Enum;
.source "NetworkRequestMetric.java"

# interfaces
.implements Lcom/shabakaty/downloader/x22$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/oy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/oy2$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/oy2$e;",
        ">;",
        "Lcom/shabakaty/downloader/x22$a;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/oy2$e;

.field public static final enum t:Lcom/shabakaty/downloader/oy2$e;

.field public static final synthetic u:[Lcom/shabakaty/downloader/oy2$e;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oy2$e;

    const-string v1, "NETWORK_CLIENT_ERROR_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/oy2$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/oy2$e;->s:Lcom/shabakaty/downloader/oy2$e;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/oy2$e;

    const-string v3, "GENERIC_CLIENT_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/oy2$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/oy2$e;->t:Lcom/shabakaty/downloader/oy2$e;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/oy2$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/shabakaty/downloader/oy2$e;->u:[Lcom/shabakaty/downloader/oy2$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/oy2$e;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/oy2$e;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/oy2$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/oy2$e;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/oy2$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oy2$e;->u:[Lcom/shabakaty/downloader/oy2$e;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/oy2$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/oy2$e;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2$e;->r:I

    return v0
.end method
