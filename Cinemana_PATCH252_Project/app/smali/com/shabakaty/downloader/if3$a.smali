.class public Lcom/shabakaty/downloader/if3$a;
.super Lcom/shabakaty/downloader/ps;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/if3;->q(Ljava/lang/String;Lcom/shabakaty/downloader/jf3;Landroid/util/Size;)Lcom/shabakaty/downloader/u14$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/yy1;

.field public final synthetic b:Lcom/shabakaty/downloader/if3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/if3;Lcom/shabakaty/downloader/yy1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/if3$a;->b:Lcom/shabakaty/downloader/if3;

    iput-object p2, p0, Lcom/shabakaty/downloader/if3$a;->a:Lcom/shabakaty/downloader/yy1;

    invoke-direct {p0}, Lcom/shabakaty/downloader/ps;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/shabakaty/downloader/ss;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/if3$a;->a:Lcom/shabakaty/downloader/yy1;

    new-instance v1, Lcom/shabakaty/downloader/ts;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ts;-><init>(Lcom/shabakaty/downloader/ss;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/yy1;->a(Lcom/shabakaty/downloader/xy1;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/if3$a;->b:Lcom/shabakaty/downloader/if3;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/cx4;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/cx4$b;

    .line 4
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/cx4$b;->h(Lcom/shabakaty/downloader/cx4;)V

    goto :goto_0

    :cond_0
    return-void
.end method
