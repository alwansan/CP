.class final Lcom/shabakaty/cinemana/ca1/Download94$PaintView;
.super Landroid/view/View;
.source "Download94.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Download94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PaintView"
.end annotation


# instance fields
.field final p:Landroid/graphics/Paint;

.field final s:Lcom/shabakaty/cinemana/ca1/Download94$State;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/shabakaty/cinemana/ca1/Download94$State;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->p:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->s:Lcom/shabakaty/cinemana/ca1/Download94$State;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Download94$PaintView;->s:Lcom/shabakaty/cinemana/ca1/Download94$State;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Native98;->refresh(Ljava/lang/Object;)V

    return-void
.end method
