.class public Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfImageOriginListener;
.super Ljava/lang/Object;
.source "ImagePerfImageOriginListener.java"

# interfaces
.implements Lcom/facebook/drawee/backends/pipeline/info/ImageOriginListener;


# instance fields
.field public final a:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

.field public final b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfImageOriginListener;->a:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfImageOriginListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfImageOriginListener;->a:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;

    .line 2
    iput p2, p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->p:I

    .line 3
    iput-object p4, p1, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;->q:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/ImagePerfImageOriginListener;->b:Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/facebook/drawee/backends/pipeline/info/ImagePerfMonitor;->b(Lcom/facebook/drawee/backends/pipeline/info/ImagePerfState;I)V

    return-void
.end method
