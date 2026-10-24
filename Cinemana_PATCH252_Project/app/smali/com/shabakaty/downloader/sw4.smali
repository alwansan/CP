.class public Lcom/shabakaty/downloader/sw4;
.super Ljava/lang/Object;
.source "UpdateClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final r:Landroid/content/Context;

.field public final s:I

.field public final t:Ljava/net/URL;

.field public final u:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/net/URL;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/sw4;->r:Landroid/content/Context;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/sw4;->s:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/sw4;->t:Ljava/net/URL;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/sw4;->u:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/sw4;->r:Landroid/content/Context;

    iget p2, p0, Lcom/shabakaty/downloader/sw4;->s:I

    iget-object v0, p0, Lcom/shabakaty/downloader/sw4;->t:Ljava/net/URL;

    iget-object v1, p0, Lcom/shabakaty/downloader/sw4;->u:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, v1}, Lcom/shabakaty/downloader/jz4;->e(Landroid/content/Context;ILjava/net/URL;Ljava/lang/Boolean;)V

    return-void
.end method
