.class public final Lcom/shabakaty/downloader/q57;
.super Landroid/util/LruCache;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Lcom/shabakaty/downloader/sp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/pp2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/pp2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/q57;->a:Lcom/shabakaty/downloader/pp2;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/shabakaty/downloader/sp2;

    check-cast p4, Lcom/shabakaty/downloader/sp2;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/q57;->a:Lcom/shabakaty/downloader/pp2;

    iget-object p1, p1, Lcom/shabakaty/downloader/pp2;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
