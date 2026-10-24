.class public Lcom/shabakaty/downloader/xe4$a;
.super Ljava/lang/Object;
.source "SuasStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/xe4;->e(Lcom/shabakaty/downloader/i2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i2;

.field public final synthetic s:Lcom/shabakaty/downloader/xe4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xe4;Lcom/shabakaty/downloader/i2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xe4$a;->s:Lcom/shabakaty/downloader/xe4;

    iput-object p2, p0, Lcom/shabakaty/downloader/xe4$a;->r:Lcom/shabakaty/downloader/i2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4$a;->s:Lcom/shabakaty/downloader/xe4;

    iget-object v1, p0, Lcom/shabakaty/downloader/xe4$a;->r:Lcom/shabakaty/downloader/i2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/xe4;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/qi2;

    .line 3
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/qi2;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4$a;->s:Lcom/shabakaty/downloader/xe4;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/xe4;->c:Lcom/shabakaty/downloader/k60;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/xe4$a;->r:Lcom/shabakaty/downloader/i2;

    new-instance v3, Lcom/shabakaty/downloader/xe4$a$a;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/xe4$a$a;-><init>(Lcom/shabakaty/downloader/xe4$a;)V

    invoke-virtual {v1, v2, v0, v0, v3}, Lcom/shabakaty/downloader/k60;->onAction(Lcom/shabakaty/downloader/i2;Lcom/shabakaty/downloader/zp1;Lcom/shabakaty/downloader/eu0;Lcom/shabakaty/downloader/vd0;)V

    return-void
.end method
