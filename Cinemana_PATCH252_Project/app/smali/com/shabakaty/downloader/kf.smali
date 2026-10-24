.class public final Lcom/shabakaty/downloader/kf;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lcom/shabakaty/downloader/l43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/z6;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/kf;

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

.field public static final m:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/kf;

    invoke-direct {v0}, Lcom/shabakaty/downloader/kf;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kf;->a:Lcom/shabakaty/downloader/kf;

    const-string v0, "sdkVersion"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->b:Lcom/shabakaty/downloader/ma1;

    const-string v0, "model"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->c:Lcom/shabakaty/downloader/ma1;

    const-string v0, "hardware"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->d:Lcom/shabakaty/downloader/ma1;

    const-string v0, "device"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->e:Lcom/shabakaty/downloader/ma1;

    const-string v0, "product"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->f:Lcom/shabakaty/downloader/ma1;

    const-string v0, "osBuild"

    .line 7
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->g:Lcom/shabakaty/downloader/ma1;

    const-string v0, "manufacturer"

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->h:Lcom/shabakaty/downloader/ma1;

    const-string v0, "fingerprint"

    .line 9
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->i:Lcom/shabakaty/downloader/ma1;

    const-string v0, "locale"

    .line 10
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->j:Lcom/shabakaty/downloader/ma1;

    const-string v0, "country"

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->k:Lcom/shabakaty/downloader/ma1;

    const-string v0, "mccMnc"

    .line 12
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->l:Lcom/shabakaty/downloader/ma1;

    const-string v0, "applicationBuild"

    .line 13
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/kf;->m:Lcom/shabakaty/downloader/ma1;

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
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/z6;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/kf;->b:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/kf;->c:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/kf;->d:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/kf;->e:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/kf;->f:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/kf;->g:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/kf;->h:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/kf;->i:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 10
    sget-object v0, Lcom/shabakaty/downloader/kf;->j:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/kf;->k:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/kf;->l:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 13
    sget-object v0, Lcom/shabakaty/downloader/kf;->m:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/z6;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    return-void
.end method
