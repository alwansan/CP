.class public Lcom/shabakaty/downloader/kz1;
.super Lcom/shabakaty/downloader/jz1;
.source "ImageStreamItems.java"


# instance fields
.field public final e:I

.field public final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(IILandroid/view/View$OnClickListener;Lzendesk/belvedere/e;)V
    .locals 0

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/shabakaty/downloader/jz1;-><init>(ILcom/shabakaty/downloader/tp2;)V

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/kz1;->e:I

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/kz1;->f:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a026c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/shabakaty/downloader/kz1;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a026b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/kz1;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
