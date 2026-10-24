.class public final Lcom/shabakaty/downloader/m62$a;
.super Lcom/shabakaty/downloader/af2;
.source "JavaAnnotationMapper.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/m62;->a(Ljava/util/List;)Lcom/shabakaty/downloader/qb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/nu2;",
        "Lcom/shabakaty/downloader/qe2;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/m62$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/m62$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/m62$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/m62$a;->r:Lcom/shabakaty/downloader/m62$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nu2;

    const-string v0, "module"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/k62;->a:Lcom/shabakaty/downloader/k62;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/k62;->c:Lcom/shabakaty/downloader/hw2;

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    sget-object v1, Lcom/shabakaty/downloader/tb4$a;->t:Lcom/shabakaty/downloader/fi1;

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/zd2;->j(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/fr0;->b(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/q20;)Lcom/shabakaty/downloader/sz4;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Error: AnnotationTarget[]"

    .line 7
    invoke-static {p1}, Lcom/shabakaty/downloader/d51;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    const-string v0, "parameterDescriptor?.typ\u2026ror: AnnotationTarget[]\")"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
