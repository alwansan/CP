.class public final synthetic Lcom/shabakaty/downloader/mw3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/gz1$a;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/nw3;

.field public final synthetic b:Lcom/shabakaty/downloader/gz1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/nw3;Lcom/shabakaty/downloader/gz1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/mw3;->a:Lcom/shabakaty/downloader/nw3;

    iput-object p2, p0, Lcom/shabakaty/downloader/mw3;->b:Lcom/shabakaty/downloader/gz1$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/gz1;)V
    .locals 1

    iget-object p1, p0, Lcom/shabakaty/downloader/mw3;->a:Lcom/shabakaty/downloader/nw3;

    iget-object v0, p0, Lcom/shabakaty/downloader/mw3;->b:Lcom/shabakaty/downloader/gz1$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/gz1$a;->a(Lcom/shabakaty/downloader/gz1;)V

    return-void
.end method
