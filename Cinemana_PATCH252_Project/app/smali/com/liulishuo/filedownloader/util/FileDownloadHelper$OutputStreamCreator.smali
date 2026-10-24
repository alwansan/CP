.class public interface abstract Lcom/liulishuo/filedownloader/util/FileDownloadHelper$OutputStreamCreator;
.super Ljava/lang/Object;
.source "FileDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/util/FileDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutputStreamCreator"
.end annotation


# virtual methods
.method public abstract create(Ljava/io/File;)Lcom/liulishuo/filedownloader/stream/FileDownloadOutputStream;
.end method

.method public abstract supportSeek()Z
.end method
