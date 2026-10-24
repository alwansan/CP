.class Lcom/liulishuo/filedownloader/FileDownloadLine$4;
.super Ljava/lang/Object;
.source "FileDownloadLine.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/FileDownloadLine$ConnectSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/FileDownloadLine;->getStatus(ILjava/lang/String;)B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mValue:B

.field public final synthetic this$0:Lcom/liulishuo/filedownloader/FileDownloadLine;

.field public final synthetic val$id:I

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/FileDownloadLine;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;->this$0:Lcom/liulishuo/filedownloader/FileDownloadLine;

    iput p2, p0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;->val$id:I

    iput-object p3, p0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/liulishuo/filedownloader/FileDownloader;->getImpl()Lcom/liulishuo/filedownloader/FileDownloader;

    move-result-object v0

    iget v1, p0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;->val$id:I

    iget-object v2, p0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/filedownloader/FileDownloader;->getStatus(ILjava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;->mValue:B

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/FileDownloadLine$4;->mValue:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
