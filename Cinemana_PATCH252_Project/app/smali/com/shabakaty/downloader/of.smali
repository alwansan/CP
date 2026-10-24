.class public final Lcom/shabakaty/downloader/of;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/ik2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/of;

.field public static final b:Lcom/shabakaty/downloader/ma1;

.field public static final c:Lcom/shabakaty/downloader/ma1;

.field public static final d:Lcom/shabakaty/downloader/ma1;

.field public static final e:Lcom/shabakaty/downloader/ma1;

.field public static final f:Lcom/shabakaty/downloader/ma1;

.field public static final g:Lcom/shabakaty/downloader/ma1;

.field public static final h:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/of;

    invoke-direct {v0}, Lcom/shabakaty/downloader/of;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/of;->a:Lcom/shabakaty/downloader/of;

    const-string v0, "requestTimeMs"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/of;->b:Lcom/shabakaty/downloader/ma1;

    const-string v0, "requestUptimeMs"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/of;->c:Lcom/shabakaty/downloader/ma1;

    const-string v0, "clientInfo"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/of;->d:Lcom/shabakaty/downloader/ma1;

    const-string v0, "logSource"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/of;->e:Lcom/shabakaty/downloader/ma1;

    const-string v0, "logSourceName"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/of;->f:Lcom/shabakaty/downloader/ma1;

    const-string v0, "logEvent"

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/of;->g:Lcom/shabakaty/downloader/ma1;

    const-string v0, "qosTier"

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/of;->h:Lcom/shabakaty/downloader/ma1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ik2;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/of;->b:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ik2;->f()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/shabakaty/downloader/m43;->a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/of;->c:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ik2;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/shabakaty/downloader/m43;->a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/of;->d:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ik2;->a()Lcom/shabakaty/downloader/r30;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/of;->e:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ik2;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/of;->f:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ik2;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/of;->g:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ik2;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/of;->h:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ik2;->e()Lcom/shabakaty/downloader/bk3;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
