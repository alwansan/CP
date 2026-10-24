.class public final Lcom/shabakaty/downloader/to3;
.super Lcom/shabakaty/downloader/so3;
.source "ReflectJavaAnnotationArguments.kt"

# interfaces
.implements Lcom/shabakaty/downloader/i62;


# instance fields
.field public final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/annotation/Annotation;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/so3;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/nn0;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/to3;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/g62;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ro3;

    iget-object v1, p0, Lcom/shabakaty/downloader/to3;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ro3;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
