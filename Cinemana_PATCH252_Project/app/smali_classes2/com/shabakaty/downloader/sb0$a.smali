.class public final Lcom/shabakaty/downloader/sb0$a;
.super Lcom/shabakaty/downloader/af2;
.source "ConstantValueFactory.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/sb0;->a(Ljava/util/List;Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/fd;
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


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/sf3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sf3;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/sb0$a;->r:Lcom/shabakaty/downloader/sf3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/nu2;

    const-string v0, "module"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/nu2;->r()Lcom/shabakaty/downloader/zd2;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/sb0$a;->r:Lcom/shabakaty/downloader/sf3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/zd2;->s(Lcom/shabakaty/downloader/sf3;)Lcom/shabakaty/downloader/b74;

    move-result-object p1

    const-string v0, "module.builtIns.getPrimi\u2026KotlinType(componentType)"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
