package com.shabakaty.cinemana.features;
import java.util.*;import java.util.concurrent.*;
public class MkvExporter {public static final Object JOB_LOCK=new Object();public static final Set<String> ACTIVE_JOB_KEYS=new HashSet<String>();public static ExecutorService JOB_EXECUTOR;}
