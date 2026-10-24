.class public Lcom/shabakaty/downloader/ya;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Landroid/widget/TextView;

.field public final synthetic s:Landroid/graphics/Typeface;

.field public final synthetic t:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xa;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/ya;->r:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/shabakaty/downloader/ya;->s:Landroid/graphics/Typeface;

    iput p4, p0, Lcom/shabakaty/downloader/ya;->t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ya;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/shabakaty/downloader/ya;->s:Landroid/graphics/Typeface;

    iget v2, p0, Lcom/shabakaty/downloader/ya;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
