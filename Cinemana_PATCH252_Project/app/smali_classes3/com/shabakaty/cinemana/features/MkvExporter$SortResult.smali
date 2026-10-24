.class final Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;
.super Ljava/lang/Object;
.source "MkvExporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/features/MkvExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SortResult"
.end annotation


# instance fields
.field final finalFile:Ljava/io/File;

.field final moved:Z

.field final originalFile:Ljava/io/File;

.field final replacedBackup:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->originalFile:Ljava/io/File;

    .line 1536
    iput-object p2, p0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->finalFile:Ljava/io/File;

    .line 1537
    iput-object p3, p0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->replacedBackup:Ljava/io/File;

    .line 1538
    iput-boolean p4, p0, Lcom/shabakaty/cinemana/features/MkvExporter$SortResult;->moved:Z

    .line 1539
    return-void
.end method
