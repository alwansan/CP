.class public final Lcom/shabakaty/downloader/uf$i;
.super Ljava/lang/Object;
.source "AutoCrashlyticsReportEncoder.java"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/eg0$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/uf$i;

.field public static final b:Lcom/shabakaty/downloader/ma1;

.field public static final c:Lcom/shabakaty/downloader/ma1;

.field public static final d:Lcom/shabakaty/downloader/ma1;

.field public static final e:Lcom/shabakaty/downloader/ma1;

.field public static final f:Lcom/shabakaty/downloader/ma1;

.field public static final g:Lcom/shabakaty/downloader/ma1;

.field public static final h:Lcom/shabakaty/downloader/ma1;

.field public static final i:Lcom/shabakaty/downloader/ma1;

.field public static final j:Lcom/shabakaty/downloader/ma1;

.field public static final k:Lcom/shabakaty/downloader/ma1;

.field public static final l:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uf$i;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uf$i;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->a:Lcom/shabakaty/downloader/uf$i;

    const-string v0, "generator"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->b:Lcom/shabakaty/downloader/ma1;

    const-string v0, "identifier"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->c:Lcom/shabakaty/downloader/ma1;

    const-string v0, "startedAt"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->d:Lcom/shabakaty/downloader/ma1;

    const-string v0, "endedAt"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->e:Lcom/shabakaty/downloader/ma1;

    const-string v0, "crashed"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->f:Lcom/shabakaty/downloader/ma1;

    const-string v0, "app"

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->g:Lcom/shabakaty/downloader/ma1;

    const-string v0, "user"

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->h:Lcom/shabakaty/downloader/ma1;

    const-string v0, "os"

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->i:Lcom/shabakaty/downloader/ma1;

    const-string v0, "device"

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->j:Lcom/shabakaty/downloader/ma1;

    const-string v0, "events"

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->k:Lcom/shabakaty/downloader/ma1;

    const-string v0, "generatorType"

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$i;->l:Lcom/shabakaty/downloader/ma1;

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
    check-cast p1, Lcom/shabakaty/downloader/eg0$e;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->b:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->c:Lcom/shabakaty/downloader/ma1;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->g()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/eg0;->a:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->d:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->i()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/shabakaty/downloader/m43;->a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->e:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->f:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->k()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->c(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/m43;

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->g:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->a()Lcom/shabakaty/downloader/eg0$e$a;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->h:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->j()Lcom/shabakaty/downloader/eg0$e$f;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 13
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->i:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->h()Lcom/shabakaty/downloader/eg0$e$e;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->j:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->b()Lcom/shabakaty/downloader/eg0$e$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 15
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->k:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->d()Lcom/shabakaty/downloader/zz1;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/uf$i;->l:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e;->f()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->b(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/m43;

    return-void
.end method
