.class public final Lcom/shabakaty/downloader/uf$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/eg0$e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/uf$h;

.field public static final b:Lcom/shabakaty/downloader/ma1;

.field public static final c:Lcom/shabakaty/downloader/ma1;

.field public static final d:Lcom/shabakaty/downloader/ma1;

.field public static final e:Lcom/shabakaty/downloader/ma1;

.field public static final f:Lcom/shabakaty/downloader/ma1;

.field public static final g:Lcom/shabakaty/downloader/ma1;

.field public static final h:Lcom/shabakaty/downloader/ma1;

.field public static final i:Lcom/shabakaty/downloader/ma1;

.field public static final j:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uf$h;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uf$h;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->a:Lcom/shabakaty/downloader/uf$h;

    const-string v0, "arch"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->b:Lcom/shabakaty/downloader/ma1;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->c:Lcom/shabakaty/downloader/ma1;

    const-string v0, "cores"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->d:Lcom/shabakaty/downloader/ma1;

    const-string v0, "ram"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->e:Lcom/shabakaty/downloader/ma1;

    const-string v0, "diskSpace"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->f:Lcom/shabakaty/downloader/ma1;

    const-string v0, "simulator"

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->g:Lcom/shabakaty/downloader/ma1;

    const-string v0, "state"

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->h:Lcom/shabakaty/downloader/ma1;

    const-string v0, "manufacturer"

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->i:Lcom/shabakaty/downloader/ma1;

    const-string v0, "modelClass"

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$h;->j:Lcom/shabakaty/downloader/ma1;

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
    check-cast p1, Lcom/shabakaty/downloader/eg0$e$c;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->b:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->a()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->b(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/m43;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->c:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->d:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->b(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/m43;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->e:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/shabakaty/downloader/m43;->a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->f:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/shabakaty/downloader/m43;->a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->g:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->i()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->c(Lcom/shabakaty/downloader/ma1;Z)Lcom/shabakaty/downloader/m43;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->h:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->h()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->b(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/m43;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->i:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/uf$h;->j:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
