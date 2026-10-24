.class public Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public final a:Lcom/facebook/cache/disk/DiskStorage;

.field public final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/facebook/cache/disk/DiskStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->a:Lcom/facebook/cache/disk/DiskStorage;

    .line 3
    iput-object p1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->b:Ljava/io/File;

    return-void
.end method
