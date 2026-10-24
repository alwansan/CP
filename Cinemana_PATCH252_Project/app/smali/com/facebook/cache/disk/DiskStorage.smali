.class public interface abstract Lcom/facebook/cache/disk/DiskStorage;
.super Ljava/lang/Object;
.source "DiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DiskStorage$Inserter;,
        Lcom/facebook/cache/disk/DiskStorage$Entry;
    }
.end annotation


# virtual methods
.method public abstract l()Z
.end method

.method public abstract m()V
.end method

.method public abstract n(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
.end method

.method public abstract o(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract p(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
.end method

.method public abstract q()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract r(Lcom/facebook/cache/disk/DiskStorage$Entry;)J
.end method

.method public abstract remove(Ljava/lang/String;)J
.end method
