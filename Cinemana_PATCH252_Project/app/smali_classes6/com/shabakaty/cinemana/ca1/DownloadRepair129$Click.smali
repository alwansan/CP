.class public final Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Click;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

.field private final context:Landroid/content/Context;
.field private final title:Landroid/widget/TextView;

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Click;->context:Landroid/content/Context;
    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Click;->title:Landroid/widget/TextView;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Click;->context:Landroid/content/Context;
    iget-object v1, p0, Lcom/shabakaty/cinemana/ca1/DownloadRepair129$Click;->title:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/DownloadRepair129;->start(Landroid/content/Context;Landroid/widget/TextView;)V
    return-void
.end method
