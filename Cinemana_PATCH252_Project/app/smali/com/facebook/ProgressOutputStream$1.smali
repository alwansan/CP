.class public Lcom/facebook/ProgressOutputStream$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ProgressOutputStream;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/facebook/GraphRequestBatch$OnProgressCallback;

.field public final synthetic s:Lcom/facebook/ProgressOutputStream;


# direct methods
.method public constructor <init>(Lcom/facebook/ProgressOutputStream;Lcom/facebook/GraphRequestBatch$OnProgressCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/ProgressOutputStream$1;->s:Lcom/facebook/ProgressOutputStream;

    iput-object p2, p0, Lcom/facebook/ProgressOutputStream$1;->r:Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream$1;->r:Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    iget-object v1, p0, Lcom/facebook/ProgressOutputStream$1;->s:Lcom/facebook/ProgressOutputStream;

    .line 2
    iget-object v2, v1, Lcom/facebook/ProgressOutputStream;->s:Lcom/facebook/GraphRequestBatch;

    .line 3
    iget-wide v3, v1, Lcom/facebook/ProgressOutputStream;->u:J

    .line 4
    iget-wide v5, v1, Lcom/facebook/ProgressOutputStream;->w:J

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    .line 5
    invoke-interface/range {v0 .. v5}, Lcom/facebook/GraphRequestBatch$OnProgressCallback;->b(Lcom/facebook/GraphRequestBatch;JJ)V

    return-void
.end method
