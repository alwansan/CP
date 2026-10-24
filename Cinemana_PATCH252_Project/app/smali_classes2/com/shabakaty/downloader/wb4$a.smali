.class public final Lcom/shabakaty/downloader/wb4$a;
.super Lcom/shabakaty/downloader/ws4;
.source "StarProjectionImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wb4;->a(Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/zd2;)Lcom/shabakaty/downloader/qe2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ts4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/shabakaty/downloader/ts4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/wb4$a;->c:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ws4;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/ts4;)Lcom/shabakaty/downloader/qt4;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wb4$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/kt4;

    invoke-static {p1}, Lcom/shabakaty/downloader/eu4;->n(Lcom/shabakaty/downloader/kt4;)Lcom/shabakaty/downloader/qt4;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
