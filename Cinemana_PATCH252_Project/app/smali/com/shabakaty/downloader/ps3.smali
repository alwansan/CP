.class public abstract Lcom/shabakaty/downloader/ps3;
.super Lcom/shabakaty/downloader/wg0;
.source "ResourceCursorAdapter.java"


# instance fields
.field public A:I

.field public B:Landroid/view/LayoutInflater;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/shabakaty/downloader/wg0;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/ps3;->A:I

    iput p2, p0, Lcom/shabakaty/downloader/ps3;->z:I

    const-string p2, "layout_inflater"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/shabakaty/downloader/ps3;->B:Landroid/view/LayoutInflater;

    return-void
.end method
