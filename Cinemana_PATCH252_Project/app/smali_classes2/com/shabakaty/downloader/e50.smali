.class public final Lcom/shabakaty/downloader/e50;
.super Ljava/lang/Object;
.source "CollectionsJVM.kt"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "kotlin.collections.convert_arg_to_set_in_removeAll"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/shabakaty/downloader/e50;->a:Z

    return-void
.end method
