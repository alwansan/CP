.class public final Lcom/shabakaty/downloader/qc;
.super Ljava/lang/Object;
.source "ApplicationScope_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qc$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pc;

    invoke-direct {v0}, Lcom/shabakaty/downloader/pc;-><init>()V

    return-object v0
.end method
