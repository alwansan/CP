.class public final synthetic Lcom/shabakaty/downloader/rw0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic r:Landroid/widget/EditText;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;

.field public final synthetic t:Lcom/shabakaty/downloader/bx0;

.field public final synthetic u:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rw0;->r:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/shabakaty/downloader/rw0;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p3, p0, Lcom/shabakaty/downloader/rw0;->t:Lcom/shabakaty/downloader/bx0;

    iput-object p4, p0, Lcom/shabakaty/downloader/rw0;->u:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object p1, p0, Lcom/shabakaty/downloader/rw0;->r:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/shabakaty/downloader/rw0;->s:Lcom/shabakaty/downloader/lo3;

    iget-object v0, p0, Lcom/shabakaty/downloader/rw0;->t:Lcom/shabakaty/downloader/bx0;

    iget-object v1, p0, Lcom/shabakaty/downloader/rw0;->u:Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;

    sget v2, Lcom/shabakaty/downloader/bx0;->z:I

    const-string v2, "$input"

    .line 1
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$newCollectionName"

    invoke-static {p2, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$cinemanaDownloadItem"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/wt2;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/se0;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Lcom/shabakaty/downloader/nx0;

    const/4 p1, 0x0

    invoke-direct {v5, v0, v1, p2, p1}, Lcom/shabakaty/downloader/nx0;-><init>(Lcom/shabakaty/downloader/bx0;Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ud0;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :cond_0
    return-void
.end method
