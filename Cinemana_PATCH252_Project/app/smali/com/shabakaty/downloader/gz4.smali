.class public final Lcom/shabakaty/downloader/gz4;
.super Ljava/lang/Object;
.source "UtilsDisplay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:I

.field public final synthetic t:Ljava/net/URL;

.field public final synthetic u:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/net/URL;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/gz4;->r:Landroid/content/Context;

    iput p2, p0, Lcom/shabakaty/downloader/gz4;->s:I

    iput-object p3, p0, Lcom/shabakaty/downloader/gz4;->t:Ljava/net/URL;

    iput-object p4, p0, Lcom/shabakaty/downloader/gz4;->u:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/gz4;->r:Landroid/content/Context;

    iget v0, p0, Lcom/shabakaty/downloader/gz4;->s:I

    iget-object v1, p0, Lcom/shabakaty/downloader/gz4;->t:Ljava/net/URL;

    iget-object v2, p0, Lcom/shabakaty/downloader/gz4;->u:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1, v2}, Lcom/shabakaty/downloader/jz4;->e(Landroid/content/Context;ILjava/net/URL;Ljava/lang/Boolean;)V

    return-void
.end method
