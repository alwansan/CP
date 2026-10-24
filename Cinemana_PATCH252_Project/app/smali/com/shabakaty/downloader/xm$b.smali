.class public Lcom/shabakaty/downloader/xm$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/xm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/xm;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/xm;Lcom/shabakaty/downloader/xm$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/xm$b;->a:Lcom/shabakaty/downloader/xm;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xm$b;->a:Lcom/shabakaty/downloader/xm;

    return-object v0
.end method
