.class public final Lcom/shabakaty/downloader/pz0$a;
.super Ljava/lang/Object;
.source "DownloadsFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/pz0;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/widget/EditText;

.field public final synthetic s:Lcom/shabakaty/downloader/lo3;

.field public final synthetic t:Lcom/shabakaty/downloader/pz0;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/pz0;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/pz0$a;->r:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/shabakaty/downloader/pz0$a;->s:Lcom/shabakaty/downloader/lo3;

    iput-object p3, p0, Lcom/shabakaty/downloader/pz0$a;->t:Lcom/shabakaty/downloader/pz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/pz0$a;->r:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/downloader/ne4;->D(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/pz0$a;->s:Lcom/shabakaty/downloader/lo3;

    iget-object p2, p0, Lcom/shabakaty/downloader/pz0$a;->r:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/shabakaty/downloader/lo3;->r:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/pz0$a;->t:Lcom/shabakaty/downloader/pz0;

    invoke-static {p1}, Lcom/shabakaty/downloader/wt2;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/se0;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v3, Lcom/shabakaty/downloader/pz0$a$a;

    iget-object p1, p0, Lcom/shabakaty/downloader/pz0$a;->t:Lcom/shabakaty/downloader/pz0;

    iget-object p2, p0, Lcom/shabakaty/downloader/pz0$a;->s:Lcom/shabakaty/downloader/lo3;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, v2}, Lcom/shabakaty/downloader/pz0$a$a;-><init>(Lcom/shabakaty/downloader/pz0;Lcom/shabakaty/downloader/lo3;Lcom/shabakaty/downloader/ud0;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    :cond_0
    return-void
.end method
