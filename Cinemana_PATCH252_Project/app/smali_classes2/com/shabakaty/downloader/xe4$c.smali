.class public Lcom/shabakaty/downloader/xe4$c;
.super Ljava/lang/Object;
.source "SuasStore.java"

# interfaces
.implements Lcom/shabakaty/downloader/mf4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xe4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ui2$c;

.field public final b:Lcom/shabakaty/downloader/qi2;

.field public final synthetic c:Lcom/shabakaty/downloader/xe4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xe4;Lcom/shabakaty/downloader/ui2$c;Lcom/shabakaty/downloader/qi2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xe4$c;->c:Lcom/shabakaty/downloader/xe4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/xe4$c;->a:Lcom/shabakaty/downloader/ui2$c;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/xe4$c;->b:Lcom/shabakaty/downloader/qi2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4$c;->a:Lcom/shabakaty/downloader/ui2$c;

    iget-object v1, p0, Lcom/shabakaty/downloader/xe4$c;->c:Lcom/shabakaty/downloader/xe4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/xe4;->getState()Lcom/shabakaty/downloader/ec4;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lcom/shabakaty/downloader/ui2$c;->b(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/ec4;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4$c;->c:Lcom/shabakaty/downloader/xe4;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xe4;->f:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/xe4$c;->b:Lcom/shabakaty/downloader/qi2;

    iget-object v2, p0, Lcom/shabakaty/downloader/xe4$c;->a:Lcom/shabakaty/downloader/ui2$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4$c;->c:Lcom/shabakaty/downloader/xe4;

    iget-object v1, p0, Lcom/shabakaty/downloader/xe4$c;->b:Lcom/shabakaty/downloader/qi2;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/xe4;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/xe4;->g:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
