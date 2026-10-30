.class public final Lcom/shabakaty/cinemana/ca1/MethodCache299;
.super Ljava/lang/Object;
.source "MethodCache299.java"

# Class metadata only. Never cache Activity, View, callback or user content.
.field private static final methods:Ljava/util/concurrent/ConcurrentHashMap;

.method static constructor <clinit>()V
    .locals 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    sput-object v0, Lcom/shabakaty/cinemana/ca1/MethodCache299;->methods:Ljava/util/concurrent/ConcurrentHashMap;
    return-void
.end method

.method public static declaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 3
    sget-object v0, Lcom/shabakaty/cinemana/ca1/MethodCache299;->methods:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :cache_miss
    check-cast v1, [Ljava/lang/reflect/Method;
    return-object v1

    :cache_miss
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    move-result-object v1
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    if-eqz v2, :cache_new
    check-cast v2, [Ljava/lang/reflect/Method;
    return-object v2

    :cache_new
    return-object v1
.end method
