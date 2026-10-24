.class public final Lcom/shabakaty/downloader/uf$p;
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
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l43<",
        "Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/uf$p;

.field public static final b:Lcom/shabakaty/downloader/ma1;

.field public static final c:Lcom/shabakaty/downloader/ma1;

.field public static final d:Lcom/shabakaty/downloader/ma1;

.field public static final e:Lcom/shabakaty/downloader/ma1;

.field public static final f:Lcom/shabakaty/downloader/ma1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/uf$p;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uf$p;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uf$p;->a:Lcom/shabakaty/downloader/uf$p;

    const-string v0, "pc"

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$p;->b:Lcom/shabakaty/downloader/ma1;

    const-string v0, "symbol"

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$p;->c:Lcom/shabakaty/downloader/ma1;

    const-string v0, "file"

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$p;->d:Lcom/shabakaty/downloader/ma1;

    const-string v0, "offset"

    .line 5
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$p;->e:Lcom/shabakaty/downloader/ma1;

    const-string v0, "importance"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/ma1;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/ma1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/uf$p;->f:Lcom/shabakaty/downloader/ma1;

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
    check-cast p1, Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;

    check-cast p2, Lcom/shabakaty/downloader/m43;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/uf$p;->b:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/shabakaty/downloader/m43;->a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/uf$p;->c:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/uf$p;->d:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/shabakaty/downloader/m43;->d(Lcom/shabakaty/downloader/ma1;Ljava/lang/Object;)Lcom/shabakaty/downloader/m43;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/uf$p;->e:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/shabakaty/downloader/m43;->a(Lcom/shabakaty/downloader/ma1;J)Lcom/shabakaty/downloader/m43;

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/uf$p;->f:Lcom/shabakaty/downloader/ma1;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/eg0$e$d$a$b$d$a;->b()I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/shabakaty/downloader/m43;->b(Lcom/shabakaty/downloader/ma1;I)Lcom/shabakaty/downloader/m43;

    return-void
.end method
