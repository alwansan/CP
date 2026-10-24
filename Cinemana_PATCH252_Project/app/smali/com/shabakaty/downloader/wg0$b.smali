.class public Lcom/shabakaty/downloader/wg0$b;
.super Landroid/database/DataSetObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/wg0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wg0$b;->a:Lcom/shabakaty/downloader/wg0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg0$b;->a:Lcom/shabakaty/downloader/wg0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/shabakaty/downloader/wg0;->r:Z

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wg0$b;->a:Lcom/shabakaty/downloader/wg0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shabakaty/downloader/wg0;->r:Z

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
